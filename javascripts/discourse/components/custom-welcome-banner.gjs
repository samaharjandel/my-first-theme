import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class CustomWelcomeBanner extends Component {
  @service currentUser;
get commaSeparatedGroups() {
    return this.currentUser?.groups
      .reject((group) => group.name.startsWith("trust_level_"))
      .map((group) => group.name)
      .join(", ");
  }
  <template>
    <div class="custom-welcome-banner">
    {{log this.currentUser}}
      {{#if this.currentUser}}
        Welcome back @{{this.currentUser.username}}. You're a member of
        {{this.commaSeparatedGroups}}.
      {{else}}
        Welcome to our community.
      {{/if}}
      You're viewing
      {{#if @outletArgs.category}}
        "{{@outletArgs.category.name}}" topics.
      {{else}}
        all topics.
      {{/if}}
    </div>
  </template>
}
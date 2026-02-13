import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import DButton from "discourse/components/d-button";

export default class CustomCounter extends Component {
  @tracked counter = 0;

  @action
  incrementCounter() {
    this.counter++;
  }

  <template>
    <div class="custom-counter">
      Count:
      {{this.counter}}
      <DButton
        @icon="plus"
        @translatedLabel="Increment"
        @action={{this.incrementCounter}}
      />
    </div>
  </template>
}
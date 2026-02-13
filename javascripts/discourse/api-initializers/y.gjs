import { apiInitializer } from "discourse/lib/api";
import CustomWelcomeBanner from "../components/custom-welcome-banner";
import CustomCounter from "../components/custom-counter";

export default apiInitializer((api) => {
  api.renderInOutlet("discovery-list-container-top", CustomWelcomeBanner);
  api.renderInOutlet("above-main-container", CustomCounter);
  api.registerValueTransformer("home-logo-href", () => "https://example.com");
  api.decorateCookedElement((element, helper) => {
  const myNewParagraph = document.createElement("p");
  myNewParagraph.textContent = "Hello, this is appended to every post bbbbbbbb!";
  element.appendChild(myNewParagraph);
});


});
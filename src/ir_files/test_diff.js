import "diff2html/bundles/css/diff2html.min.css";
import { Diff2HtmlUI } from "diff2html/lib/ui/js/diff2html-ui";
import { diffStr } from "./config";

const diffString = diffStr;
const targetElement = document.getElementById("diffBox");
const configuration = {
  drawFileList: true,
  fileListToggle: false,
  fileListStartVisible: false,
  fileContentToggle: false,
  matching: "lines",
  outputFormat: "side-by-side",
  // outputFormat: "line-by-line",
  synchronisedScroll: true,
  highlight: true,
  renderNothingWhenEmpty: false
};

// const diff2htmlUi = new Diff2HtmlUI(targetElement, diffString, configuration);
// diff2htmlUi.draw();
// diff2htmlUi.highlightCode();

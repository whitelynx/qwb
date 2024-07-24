import QtQuick 2.2
import QtWebEngine 1.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1


ApplicationWindow {
	id: browserWindow

	function load(url) {
		currentWebView.url = url
	}

	Component.onCompleted: load('https://duckduckgo.com')

	property Item currentWebView: tabs.currentIndex < tabs.count ? tabs.getTab(tabs.currentIndex).item : null

	visible: true
	width: 800
	height: 600
	title: currentWebView && currentWebView.title

	Commands {
		id: commands
	}

	menuBar: MenuBar {
		id: menuBar

		Menu {
			title: qsTr("&File")
			MenuItem { action: commands.quit }
		}
	}

	toolBar: ToolBar {
		id: toolBar

		// Override default toolbar margins.
		Binding { target: toolBar.contentItem; property: "topMargin"; value: 3 }
		Binding { target: toolBar.contentItem; property: "bottomMargin"; value: 3 }
		Binding { target: toolBar.contentItem; property: "leftMargin"; value: 3 }
		Binding { target: toolBar.contentItem; property: "rightMargin"; value: 3 }

		RowLayout {
			anchors.top: parent.top
			anchors.bottom: parent.bottom
			anchors.left: parent.left

			ToolButton { action: commands.back; width: 24; height: 24; implicitWidth: 24; implicitHeight: 24 }
			ToolButton { action: commands.forward; width: 24; height: 24; implicitWidth: 24; implicitHeight: 24 }

			//ToolSeparator {}

			ToolButton { action: commands.refresh; width: 24; height: 24; implicitWidth: 24; implicitHeight: 24 }
		}
	}

	TabView {
		id: tabs

		function createEmptyTab() {
			var tab = addTab("", tabComponent)

			// Change to the new tab, so tab.item gets instantiated.
			tabs.currentIndex = tabs.count - 1

			// Bind `tab.title` to the item's title.
			tab.title = Qt.binding(function() { return tab.item.title })

			return tab
		}

		anchors.fill: parent

		// Create a new default tab when we finish loading.
		Component.onCompleted: createEmptyTab()

		Component {
			id: tabComponent

			WebEngineView {
				id: webEngineView
				focus: true

				onLinkHovered: {
					if(hoveredUrl == "") {
						statusBubble.shown = false
					} else {
						statusBubble.text = hoveredUrl
						statusBubble.shown = true
					}
				}
			}
		}
	}

	StatusBubble {
		id: statusBubble
	}
}

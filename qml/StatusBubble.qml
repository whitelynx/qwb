import QtQuick 2.2


Rectangle {
	id: root

	property bool shown: false
	property int padding: 2
	property string text

	color: "oldlace"
	border.color: "black"
	border.width: 1
	radius: padding * 2

	anchors.left: parent.left
	anchors.leftMargin: padding * -2
	anchors.bottom: parent.bottom
	anchors.bottomMargin: padding * -2

	width: statusText.paintedWidth + (padding * 4)
	height: statusText.paintedHeight + (padding * 4)

	states: [
		State {
			name: "shown"
			when: root.shown
			PropertyChanges { target: root; opacity: 1.0 }
		},
		State {
			name: "hidden"
			when: !root.shown
			PropertyChanges { target: root; opacity: 0.0 }
		}
	]

	transitions: [
		Transition {
			from: "hidden"; to: "shown"
			NumberAnimation {
				properties: "opacity"
				duration: 100
				easing.type: Easing.OutCubic
			}
		},
		Transition {
			from: "shown"; to: "hidden"
			NumberAnimation {
				properties: "opacity"
				duration: 250
				easing.type: Easing.InOutQuad
			}
		}
	]

	Text {
		id: statusText

		text: root.text

		anchors.top: parent.top
		anchors.topMargin: root.padding
		anchors.right: parent.right
		anchors.rightMargin: root.padding

		elide: Qt.ElideMiddle

		width: Math.min(browserWindow.width * 0.8, implicitWidth)
	}
}

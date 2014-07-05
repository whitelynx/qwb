import QtQuick.Controls 1.2


Action {
	id: root

	property var aliases
	property string category

	signal executed()

	onTriggered: executed()
}

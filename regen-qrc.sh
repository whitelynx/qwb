#!/bin/bash

cd `dirname $0`

function build_resources() {
	dir="$1"
	pat="$2"
	QRC_FILE="${dir}.qrc"
	RCC_FILE="${dir}.rcc"

	echo '<!DOCTYPE RCC><RCC version="1.0">' > "$QRC_FILE"
	echo '  <qresource>' >> "$QRC_FILE"
	find "$dir" -name "$pat" | sed 's/.*/    <file>&<\/file>/' >> "$QRC_FILE"
	echo '  </qresource>' >> "$QRC_FILE"
	echo '</RCC>' >> "$QRC_FILE"

	echo "Created $QRC_FILE"

	#rcc -binary "$QRC_FILE" -o "$RCC_FILE"
	#echo "Built $RCC_FILE"
}

#build_resources data '*.ini'
build_resources qml '*.qml'
build_resources icons '*.png'

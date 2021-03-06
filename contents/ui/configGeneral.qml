/*
 *  Copyright 2013 David Edmundson <davidedmundson@kde.org>
 *  Copyright 2019 Michail Vourlakos <mvourlakos@gmail.com>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  2.010-1301, USA.
 */

import QtQuick 2.0
import QtQuick.Controls 2.0
import org.kde.kirigami 2.5 as Kirigami

Kirigami.FormLayout {
    property alias cfg_showSecondHand: showSecondHandCheckBox.checked
    property alias cfg_showTimezoneString: showTimezoneCheckBox.checked
    property alias cfg_circleStyle: circleStyleCheckBox.checked
    property alias cfg_drawCalendarLines: calendarLinesCheckBox.checked
    property alias cfg_thicknessPadding: thickPaddingSpn.value

    anchors {
        left: parent.left
        right: parent.right
    }

    CheckBox {
        id: showSecondHandCheckBox
        text: i18n("Show seconds hand")
        Kirigami.FormData.label: i18n("Appearance:")
    }
    CheckBox {
        id: showTimezoneCheckBox
        text: i18n("Show time zone")
    }

    CheckBox {
        id: circleStyleCheckBox
        text: i18n("Use circle style for highlights")
    }

    CheckBox {
        id: calendarLinesCheckBox
        text: i18n("Draw calendar lines")
    }

    SpinBox{
        id: thickPaddingSpn
        from: 0
        to: 96
        Kirigami.FormData.label: i18n("Thickness padding:")

        textFromValue: function(value) {
            return value + " " + i18nc("pixels","px.");
        }
    }
}

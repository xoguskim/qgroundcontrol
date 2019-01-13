/****************************************************************************
 *
 *   (c) 2009-2016 QGROUNDCONTROL PROJECT <http://www.qgroundcontrol.org>
 *
 * QGroundControl is licensed according to the terms in the file
 * COPYING.md in the root of the source code directory.
 *
 ****************************************************************************/


import QtQuick                  2.11
import QGroundControl.Palette   1.0

Item {
    width:  size
    height: size

    property real size:     50
    property real percent:  0

    QGCPalette { id: qgcPal }

    function getIcon() {
        if (percent < 20)
            return "/auterion/img/menu_signal_0.svg"
        if (percent < 40)
            return "/auterion/img/menu_signal_25.svg"
        if (percent < 60)
            return "/auterion/img/menu_signal_50.svg"
        if (percent < 90)
            return "/auterion/img/menu_signal_75.svg"
        return "/auterion/img/menu_signal_100.svg"
    }

    Image {
        source:             getIcon()
        fillMode:           Image.PreserveAspectFit
        anchors.fill:       parent
        sourceSize.height:  size
    }
}

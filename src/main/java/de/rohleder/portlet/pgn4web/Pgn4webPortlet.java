package de.rohleder.portlet.pgn4web;

import com.liferay.util.bridges.mvc.MVCPortlet;

import javax.portlet.*;
import java.io.IOException;

public class Pgn4webPortlet extends MVCPortlet {
    private static String[] parameterKeys = {"doGameHeader", "doGameText", "pgnArticleId", "doCommentsInMove", "doGameButtons", "doCommentsOnSeperateLines",
            "doStartAutoPlay"};

    @Override
    public void processAction(ActionRequest request, ActionResponse response) throws PortletException, IOException {
        boolean didSave = false;
        PortletPreferences prefs = request.getPreferences();

        for (String parameterKey : parameterKeys) {
            String parameterValue = request.getParameter(parameterKey);
            if (parameterValue != null) {
                prefs.setValue(parameterKey, parameterValue);
                didSave = true;
            }
        }

        if (didSave) {
            prefs.store();
            response.setPortletMode(PortletMode.VIEW);
        } else
            super.processAction(request, response);
    }
}

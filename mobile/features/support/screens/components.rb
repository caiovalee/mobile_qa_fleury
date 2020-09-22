class Navigator 

    def inicial
        return find_element(id: 'br.com.grupofleury.fleury.hml:id/txtHomeNotLoggedWelcome')
       
    end

    def unidades
        find_element(id: "br.com.grupofleury.fleury.hml:id/title_points_of_care").click
        find_element(id: "com.android.packageinstaller:id/permission_deny_button").click
    end

    def tap_by_unity(target)
        scroll_to(target).click   
    end

    #nao esta sendo usado no momento 
    def validar(endereco)
        # return find_element(xpath: "//android.widget.TextView[@text='#{endereco}']")
        return find_element(id: "br.com.grupofleury.fleury.hml:id/point_of_care_full_address")
        # return find_element(xpath: "//android.widget.TextView[contains(@text,'#{endereco}')]")
    end


end

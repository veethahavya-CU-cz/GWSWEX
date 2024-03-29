FUNCTION kUS(s, ks)
	! add Horton_inf regime effects. only capilary/vG-M considered here
		REAL*8, INTENT(IN) :: s, ks
		REAL*8 :: kUS, theta_r, theta_s, n, m, sat
		theta_r = vanG_pars(1)
		theta_s = vanG_pars(2)
		n = vanG_pars(4)
		m = (1-(1/n))
		IF(s<0.1) THEN
			sat = ((0.1-theta_r)/(theta_s-theta_r))
		ELSE
			sat = ((s-theta_r)/(theta_s-theta_r))
		END IF
		kUS = ks*sat*((1-(1-(sat)**(1/m))**m)**2)
		IF(ISNAN(kUS)) THEN
			kUS = ks
		END IF
END FUNCTION kUS
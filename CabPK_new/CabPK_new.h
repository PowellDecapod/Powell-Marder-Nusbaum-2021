
//*********** variable definitions (instead of .h file) ********************
/*
* This is a template header file for a user modules derived from
* DefaultGUIModel with a custom GUI.
*/


#include <rt.h>
#include <workspace.h>
#include <runningstat.h>

#include <QMdiArea>
#include <default_gui_model.h>

class CabPK_new : public DefaultGUIModel {
	
	Q_OBJECT
	
	public:
	
		CabPK_new(void);
		virtual ~CabPK_new(void);
	
		void execute(void);
		void createGUI(DefaultGUIModel::variable_t *, int);
		void customizeGUI(DefaultGUIModel::variable_t *, int);
		void implement_vars(DefaultGUIModel::variable_t *, int, int , int);
		

		double m,n,h,h_k;

		double a;
		double b;
		double mmi_cabpk;
		double mmi_ccap;
		double msyn_LG;
		double msyn_PD;
		double mlts;
		double hlts;

		double m_mi_cabpk_inf_update(double, double);		
		double tau_mi_cabpk(double, double, double, double);
		
		double m_mi_ccap_inf_update(double, double);
		double tau_mi_ccap(double, double, double, double);
		
		double m_syn_LG_inf_update(double, double);
		double tau_syn_LG(double, double, double, double);
		
		double m_lts_inf_update(double, double);
		double taum_lts(double, double, double, double);
		
		double h_lts_inf_update(double, double);
		double tauh_lts(double, double, double, double);
		
		double m_syn_PD_inf_update(double, double);
		double tau_syn_PD(double, double, double, double);

		size_t nstate , nparam , nevent , ncomment ;  

	


	
	protected:
	
		virtual void update(DefaultGUIModel::update_flags_t);
	
	private:
	
 		void init(void);
		double Eleak_mV;
		double Gleak;
		double Rleak;
		double membraneV_1;
		double membraneV_2;
		double membrane_C;
		double membrane_Eleak;
		double membrane_gleak;
		double added_C;
		double amplifierVoltageOutputScale;
		double amplifierCurrentInputScale;
		double RTXIspeed,lastRead_timestep;
		double Gmi_cabpk;
		double Emi_cabpk_mV;
		double Vhalf_mi_cabpk;
		double taulow_mi_cabpk;
		double tauhigh_mi_cabpk;
		double Gmi_ccap;
		double Emi_ccap_mV;
		double Vhalf_mi_ccap;
		double taulow_mi_ccap;
		double tauhigh_mi_ccap;
		double Gsyn_LG;
		double Esyn_LG_mV;
		double Vhalf_syn_LG;
		double taulow_syn_LG;
		double tauhigh_syn_LG;
		double Glts;
		double Elts_mV;
		double Vhalfm_lts;
		double taulowm_lts;
		double tauhighm_lts;
		double Vhalfh_lts;
		double taulowh_lts;
		double tauhighh_lts;
		double Gsyn_PD;
		double Esyn_PD_mV;
		double Vhalf_syn_PD;
		double taulow_syn_PD;
		double tauhigh_syn_PD;


		QGroupBox *fields_Box;

	



		#define buffer_size 1


	
	private slots:
	// these are custom functions that can also be connected
	// to events through the Qt API. they must be implemented
	// in plugin_template.cpp
	
		void aBttn_event(void);
		void bBttn_event(void);
		//void updatePotassiumKinetics(bool);
	
};



#include "CabPK_new.h"
#include <main_window.h>
#include <iostream>
#include <QtGui>

extern "C" Plugin::Object *createRTXIPlugin(void){
	return new CabPK_new();
}

static DefaultGUIModel::variable_t vars[] = {
{	"Eleak_mV",		"Leak Nernst Potential (mV)",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"n",			"n_gate",								DefaultGUIModel::STATE,					},
{   "m",			"m_gate",								DefaultGUIModel::STATE,					},
{	"h",			"h_gate",								DefaultGUIModel::STATE,					},
{	"n_A",			"A-type K activation",								DefaultGUIModel::STATE,					},
{	"h_A",			"A-type K inactivation",								DefaultGUIModel::STATE,					},
{	"membraneV_1",		"membraneV_1 (mV)",							DefaultGUIModel::STATE,					},
{	"membraneV_2",		"membraneV_2 (mV)",							DefaultGUIModel::STATE,					},
{	"Rleak_KOhms",		"Rleak (KOhms)",							DefaultGUIModel::STATE,					},
{	"RTXIspeed",		"Scaling of rates to RTXI sampling interval (in msec)",			DefaultGUIModel::STATE,					}, 
{	"membrane C",		"capacity of membrane (microF)",					DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"membrane Eleak",	"measured leakage reversal potential of the membrane (mV)",		DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"membrane gleak",	"measured leakage conductance of the membrane (mSiemens)",		DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"added C",		"added capacity load (microF)",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Voltage Output Scale", "x10 V potential output from the amplifier under current clamp",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Command Input Gain (CC)","micrAmp/V command input to the amplifier under current clamp",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Gmi_cabpk (normalized)",	"Neuromodulatory current maximal conductance normalized to capacity (mSiemens/uFarad)",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Emi_cabpk_mV",		"Neuromodulatory Nernst Potential (mV)",				DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalf_mi_cabpk",		"Half-activation voltage of Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulow_mi_cabpk",	"activation timescale (low) Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhigh_mi_cabpk",	"activation timescale (high) Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Gmi_ccap (normalized)",	"Neuromodulatory current maximal conductance normalized to capacity (mSiemens/uFarad)",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Emi_ccap_mV",		"Neuromodulatory Nernst Potential (mV)",				DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalf_mi_ccap",		"Half-activation voltage of Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulow_mi_ccap",	"activation timescale (low) Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhigh_mi_ccap",	"activation timescale (high) Imi",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Gsyn_LG (normalized)","LG synaptic current maximal conductance normalized to capacity (mSiemens/uFarad)",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Esyn_LG_mV",		"Synaptic Nernst Potential (mV)",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalf_syn_LG",	"Half-activation voltage of Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulow_syn_LG",	"activation timescale (low) Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhigh_syn_LG",	"activation timescale (high) Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Gsyn_PD (normalized)","Int1 synaptic current maximal conductance normalized to capacity (mSiemens/uFarad)",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Esyn_PD_mV",		"Synaptic Nernst Potential (mV)",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalf_syn_PD",	"Half-activation voltage of Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulow_syn_PD",	"activation timescale (low) Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhigh_syn_PD",	"activation timescale (high) Isyn",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Glts (normalized)","Trans-LTS current maximal conductance normalized to capacity (mSiemens/uFarad)",	DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Elts_mV",		"Trans-LTS Nernst Potential (mV)",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalfm_lts",	"Half-activation voltage of I-lts",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulowm_lts",	"activation timescale (low) I-lts",						DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhighm_lts",	"activation timescale (high) I-lts",					DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"Vhalfh_lts",	"Half-deinactivation voltage of I-lts",					DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"taulowh_lts",	"deinactivation timescale (low) I-lts",					DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{	"tauhighh_lts",	"deinactivation timescale (high) I-lts",				DefaultGUIModel::PARAMETER | DefaultGUIModel::DOUBLE,	},
{   "Vmem_mV_1",		"Membrane potential (mV)",							DefaultGUIModel::INPUT,					},
{   "Vmem_mV_2",		"Membrane potential (mV)",							DefaultGUIModel::INPUT,					},
{	"Iout_microAmp_1",	"Output current (microAmp)",						DefaultGUIModel::OUTPUT,				},
{	"Iout_microAmp_2",	"Output current (microAmp)",						DefaultGUIModel::OUTPUT,				},
{	"external_input",	"external_input injection, normalized to capacity (microA/microF)",	DefaultGUIModel::INPUT | DefaultGUIModel::DOUBLE,	},
};

static size_t num_vars = sizeof(vars) / sizeof(DefaultGUIModel::variable_t);


CabPK_new::CabPK_new(void) : DefaultGUIModel("CabPK_new", ::vars, ::num_vars) {
	setWhatsThis("<p><b>CabPK_new:</b><br>This module reads membrane potential, claculates current and delivers to output </p>");  
		//this is for the HELP function, when ? is put on top of CabPK_new

	

	DefaultGUIModel::createGUI(vars, 0); // the zero is because we don't was to implement the variables yet. this will be done by the costumizeGUI function
	customizeGUI(vars, num_vars);
	update( INIT ); // this is optional, you may place initialization code directly into the constructor
	refresh(); // this is required to update the GUI with parameter and state values
	QTimer::singleShot(0, this, SLOT(resizeMe()));
}

CabPK_new::~CabPK_new(void) { }


//*************************************************************



//CabPK_new rhythm (Rodriguez, 2013)
inline double CabPK_new::m_mi_cabpk_inf_update(double v, double Vhalf_mi_cabpk){
            return (  1/(1+exp((v-Vhalf_mi_cabpk)/-5)) );
    }	
//Imi tau (Rodriguez, 2013)
inline double CabPK_new::tau_mi_cabpk(double v, double Vhalf_mi_cabpk, double taulow_mi_cabpk, double tauhigh_mi_cabpk){
            return (  taulow_mi_cabpk +(tauhigh_mi_cabpk-taulow_mi_cabpk)/(1+exp(-(v-Vhalf_mi_cabpk)/5)) );
    }

//IMI-CCAP (Delong, 2009)
inline double CabPK_new::m_mi_ccap_inf_update(double v, double Vhalf_mi_ccap){
            return (  1/(1+exp((v-Vhalf_mi_ccap)/-5)) );
    }	
//Imi tau (Delong, 2009)
inline double CabPK_new::tau_mi_ccap(double v, double Vhalf_mi_ccap, double taulow_mi_ccap, double tauhigh_mi_ccap){
            return (  taulow_mi_ccap +(tauhigh_mi_ccap-taulow_mi_ccap)/(1+exp(-(v-Vhalf_mi_ccap)/5)) );
    }
// LG synapse (Nadim 1998)
inline double CabPK_new::m_syn_LG_inf_update(double v, double Vhalf_syn_LG){
			return (  1/(1+exp((v-Vhalf_syn_LG)/-1)) );
	}
// LG synapse tau (Nadim 1998)	
inline double CabPK_new::tau_syn_LG(double v, double Vhalf_syn_LG, double taulow_syn_LG, double tauhigh_syn_LG){
			return (  taulow_syn_LG +(tauhigh_syn_LG-taulow_syn_LG)/(1+exp(-(v-Vhalf_syn_LG)/1)) );
	}
// Int1 synapse (Nadim 1998)	
inline double CabPK_new::m_syn_PD_inf_update(double v, double Vhalf_syn_PD){
			return (  1/(1+exp((v-Vhalf_syn_PD)/-0.5)) );
	}
// In1 synapse tau (Nadim 1998)	
inline double CabPK_new::tau_syn_PD(double v, double Vhalf_syn_PD, double taulow_syn_PD, double tauhigh_syn_PD){
			return (  taulow_syn_PD +(tauhigh_syn_PD-taulow_syn_PD)/(1+exp(-(v-Vhalf_syn_PD)/0.5)) );
	}
	
inline double CabPK_new::m_lts_inf_update(double v, double Vhalfm_lts){
			return (  1/(1+exp((v-Vhalfm_lts)/-3)) );
	}

inline double CabPK_new::taum_lts(double v, double Vhalfm_lts, double taulowm_lts, double tauhighh_lts){
			return (  taulowm_lts + (tauhighm_lts-taulowm_lts)/(1+exp(-(v-Vhalfm_lts)/3)) );
	}

inline double CabPK_new::h_lts_inf_update(double v, double Vhalfh_lts){
			return (  1/(1+exp((v-Vhalfh_lts)/0.8)) );
	}
	
inline double CabPK_new::tauh_lts(double v, double Vhalfh_lts, double taulowh_lts, double tauhighh_lts){
			return (  taulowh_lts + (tauhighh_lts-taulowh_lts)/(1+exp((v-Vhalfh_lts)/0.8)) );
	}


//*************************************************************

void CabPK_new::execute(void) {
///////work here:  find period/////////////////////////////////////////////////

	double out1 = 0;
	double out2 = 0;
	
	membraneV_1 = input(0) * amplifierVoltageOutputScale;
	membraneV_2 = input(1) * amplifierVoltageOutputScale;
	
// Imi

 mmi_cabpk = mmi_cabpk + RTXIspeed * (m_mi_cabpk_inf_update(membraneV_1, Vhalf_mi_cabpk) - mmi_cabpk) / tau_mi_cabpk(membraneV_1, Vhalf_mi_cabpk, taulow_mi_cabpk, tauhigh_mi_cabpk);

 mmi_ccap = mmi_ccap + RTXIspeed * (m_mi_ccap_inf_update(membraneV_1, Vhalf_mi_ccap) - mmi_ccap) / tau_mi_ccap(membraneV_1, Vhalf_mi_ccap, taulow_mi_ccap, tauhigh_mi_ccap);

 msyn_LG = msyn_LG + RTXIspeed * (m_syn_LG_inf_update(membraneV_1, Vhalf_syn_LG) - msyn_LG) / tau_syn_LG(membraneV_1, Vhalf_syn_LG, taulow_syn_LG, tauhigh_syn_LG); 
 
 mlts = mlts + RTXIspeed * (m_lts_inf_update(membraneV_1, Vhalfm_lts) - mlts) / taum_lts(membraneV_1, Vhalfm_lts, taulowm_lts, tauhighm_lts);
 
 hlts = hlts + RTXIspeed * (h_lts_inf_update(membraneV_1, Vhalfh_lts) - hlts) / tauh_lts(membraneV_1,Vhalfh_lts, tauhighh_lts, tauhighh_lts);
	
 msyn_PD = msyn_PD + RTXIspeed * (m_syn_PD_inf_update(membraneV_2, Vhalf_syn_PD) - msyn_PD) / tau_syn_PD(membraneV_2, Vhalf_syn_PD, taulow_syn_PD, tauhigh_syn_PD); 

	double leak_subtract = membrane_gleak*(membraneV_1-membrane_Eleak); //physical leakage of membrane, subtract it to get the leakage defined by the user
	

	out1 = - amplifierCurrentInputScale *(
						(Gmi_cabpk*mmi_cabpk*(membraneV_1-Emi_cabpk_mV) + Gmi_ccap*mmi_ccap*(membraneV_1-Emi_ccap_mV) + Gsyn_PD*msyn_PD*(membraneV_1-Esyn_PD_mV) + Glts*mlts*hlts*(membraneV_1-Elts_mV)) );

	output(0) = out1;

	out2 = - amplifierCurrentInputScale *(
						Gsyn_LG*msyn_LG*(membraneV_2-Esyn_LG_mV) ) ;
	output(1) = out2;

///////////////////////////////////////////////////////////////////////////////
}


void CabPK_new::init(void){

// Initialize Parameters & Variables
     
    amplifierVoltageOutputScale = 100;// divide by 10 V potential output from the amplifier under current clamp; and X1000 to mV;
    amplifierCurrentInputScale = 1;// computation results in microamps; micrAmp/V command input to the amplifier under current clamp;
    Eleak_mV   = -70;//mVolts
    Gleak = 0.0; //mSiemens; note that when working with model cell, 
                    //this branch is in parralel to the resistor incorporated into the model apparatus; 
                    //hence, do not expect that Eleak be the resting potential...
    Rleak = (1/(Gleak*(membrane_C+added_C)));


//	Set to values from Table1 in Rodriguez (2013)
    Emi_cabpk_mV = 10; //mVolts
    Gmi_cabpk = 0; //mSiemens
	Vhalf_mi_cabpk=-50;
	taulow_mi_cabpk=5;
	tauhigh_mi_cabpk=5;
	
//	Set to values from Table1 in Delong (2009)
    Emi_ccap_mV = 10; //mVolts
    Gmi_ccap = 0; //mSiemens
	Vhalf_mi_ccap=-50;
	taulow_mi_ccap=50;
	tauhigh_mi_ccap=100;
	
//	Set to values from Table1 in Rodriguez (2013)	
	Esyn_LG_mV = -80;//mVolts
	Gsyn_LG = 0; //mSiemens
	Vhalf_syn_LG = -50; //mVolts
	taulow_syn_LG = 200;
	tauhigh_syn_LG = 200;
	
//	Set to values from Table1 in Rodriguez (2013)	
	Esyn_PD_mV = -80;//mVolts
	Gsyn_PD = 0; //mSiemens
	Vhalf_syn_PD = -50; //mVolts
	taulow_syn_PD = 50;
	tauhigh_syn_PD = 50;
	
//	Set to values from Table1 in Rodriguez (2013)	
	Elts_mV = 10;//mVolts
	Glts = 0; //mSiemens
	Vhalfm_lts = -50; //mVolts
	taulowm_lts = 500;
	tauhighm_lts = 500;
	Vhalfh_lts = -58;//mVolts
	taulowh_lts = 3500;
	tauhighh_lts = 1500;

    membrane_C = 0.001;//microFarad
    membrane_Eleak = 0;//mV
    membrane_gleak = 0;//mSiemens

    added_C = 0;//microFarad
    

    membraneV_1 = -50;
	//membraneV_2 = -50;

 
    RTXIspeed = 0.04;//this is the RTXI sampling rate, in msec 
    lastRead_timestep = 0;
    
    m=.05; n=.35; h=0.75; a=0.5; b=0.3; mmi_cabpk=0.; mmi_ccap=0.0; msyn_LG=0.0; msyn_PD=0.0; mlts = 0.0; hlts = 0.0; 

 


    // Initialize the GUI
    setParameter("Eleak_mV",Eleak_mV);
    setParameter("Gleak (normalized)",Gleak);
    setState("Rleak_KOhms",Rleak);
    setState("membraneV_1",membraneV_1);
    setState("m",m);
    setState("n",n);
    setState("h",h);
    setParameter("Voltage Output Scale",amplifierVoltageOutputScale);
    setParameter("Command Input Gain (CC)",amplifierCurrentInputScale);
    setParameter("membrane C",membrane_C);
    setParameter("membrane Eleak",membrane_Eleak);
    setParameter("membrane gleak",membrane_gleak);
    setParameter("added C",added_C);

    setParameter("Emi_cabpk_mV",Emi_cabpk_mV);
    setParameter("Gmi_cabpk (normalized)",Gmi_cabpk);
    setParameter("Vhalf_mi_cabpk",Vhalf_mi_cabpk);
    setParameter("taulow_mi_cabpk",taulow_mi_cabpk);
    setParameter("tauhigh_mi_cabpk",tauhigh_mi_cabpk);
	
	setParameter("Emi_ccap_mV",Emi_ccap_mV);
    setParameter("Gmi_ccap (normalized)",Gmi_ccap);
    setParameter("Vhalf_mi_ccap",Vhalf_mi_ccap);
    setParameter("taulow_mi_ccap",taulow_mi_ccap);
    setParameter("tauhigh_mi_ccap",tauhigh_mi_ccap);

	setParameter("Esyn_LG_mV",Esyn_LG_mV);
	setParameter("Gsyn_LG (normalized)",Gsyn_LG);
	setParameter("Vhalf_syn_LG",Vhalf_syn_LG);
	setParameter("taulow_syn_LG",taulow_syn_LG);
	setParameter("tauhigh_syn_LG",tauhigh_syn_LG);
	
	setParameter("Esyn_PD_mV",Esyn_PD_mV);
	setParameter("Gsyn_PD (normalized)",Gsyn_PD);
	setParameter("Vhalf_syn_PD",Vhalf_syn_PD);
	setParameter("taulow_syn_PD",taulow_syn_PD);
	setParameter("tauhigh_syn_PD",tauhigh_syn_PD);
	
	setParameter("Elts_mV",Elts_mV);
	setParameter("Glts (normalized)",Glts);
	setParameter("Vhalfm_lts",Vhalfm_lts);
	setParameter("taulowm_lts",taulowm_lts);
	setParameter("tauhighm_lts",tauhighm_lts);
	setParameter("Vhalfh_lts",Vhalfh_lts);
	setParameter("taulowh_lts",taulowh_lts);
	setParameter("tauhighh_lts",tauhighh_lts);
	
    setState("RTXIspeed", RTXIspeed);
}



void CabPK_new::update(DefaultGUIModel::update_flags_t flag) {
	switch (flag) {
		case INIT:
			init();		
			break;
	
		case MODIFY:

			if (isnan(m) || isinf(m))
				{
				m=.05; n=.5; h=0.5, h_k=1; a=0.5; b=0.3; mmi_cabpk=0.; mmi_ccap=0.0; msyn_LG=0.0; msyn_PD=0.0; mlts = 0.0; hlts = 0.0;
				}

		        Eleak_mV = getParameter("Eleak_mV").toDouble();
		        Gleak = getParameter("Gleak (normalized)").toDouble();
    

			Emi_cabpk_mV = getParameter("Emi_cabpk_mV").toDouble();
           		Gmi_cabpk = getParameter("Gmi_cabpk (normalized)").toDouble();
           		Vhalf_mi_cabpk = getParameter("Vhalf_mi_cabpk").toDouble();
           		taulow_mi_cabpk = getParameter("taulow_mi_cabpk").toDouble();
           		tauhigh_mi_cabpk = getParameter("tauhigh_mi_cabpk").toDouble();
				
			Emi_ccap_mV = getParameter("Emi_ccap_mV").toDouble();
           		Gmi_ccap = getParameter("Gmi_ccap (normalized)").toDouble();
           		Vhalf_mi_ccap = getParameter("Vhalf_mi_ccap").toDouble();
           		taulow_mi_ccap = getParameter("taulow_mi_ccap").toDouble();
           		tauhigh_mi_ccap = getParameter("tauhigh_mi_ccap").toDouble();	
			
			Esyn_LG_mV = getParameter("Esyn_LG_mV").toDouble();
				Gsyn_LG = getParameter("Gsyn_LG (normalized)").toDouble();
				Vhalf_syn_LG = getParameter("Vhalf_syn_LG").toDouble();
				taulow_syn_LG = getParameter("taulow_syn_LG").toDouble();
				tauhigh_syn_LG = getParameter("tauhigh_syn_LG").toDouble();
				
			Esyn_PD_mV = getParameter("Esyn_PD_mV").toDouble();
				Gsyn_PD = getParameter("Gsyn_PD (normalized)").toDouble();
				Vhalf_syn_PD = getParameter("Vhalf_syn_PD").toDouble();
				taulow_syn_PD = getParameter("taulow_syn_PD").toDouble();
				tauhigh_syn_PD = getParameter("tauhigh_syn_PD").toDouble();
				
			Elts_mV = getParameter("Elts_mV").toDouble();
				Glts = getParameter("Glts (normalized)").toDouble();
				Vhalfm_lts = getParameter("Vhalfm_lts").toDouble();
				taulowm_lts = getParameter("taulowm_lts").toDouble();
				tauhighm_lts = getParameter("tauhighm_lts").toDouble();
				Vhalfh_lts = getParameter("Vhalfh_lts").toDouble();
				taulowh_lts = getParameter("taulowh_lts").toDouble();
				tauhighh_lts = getParameter("tauhighh_lts").toDouble();

			membrane_C = getParameter("membrane C").toDouble();
			membrane_Eleak = getParameter("membrane Eleak").toDouble();
			membrane_gleak = getParameter("membrane gleak").toDouble();

			added_C = getParameter("added C").toDouble();


			amplifierVoltageOutputScale = getParameter("Voltage Output Scale").toDouble();
			amplifierCurrentInputScale = getParameter("Command Input Gain (CC)").toDouble();

			Rleak = (1/(Gleak*(membrane_C+added_C)));
			setState("Rleak_KOhms",Rleak);

			break;

		case UNPAUSE:
			break;

		case PAUSE:
					output(0) = 0;
					output(1) = 0;
			break;

		case PERIOD:
			break;
	
		default:
			break;
	}
}


void CabPK_new::implement_vars(DefaultGUIModel::variable_t *var, int n, int x, int y)  	//this function implement the variables while docking them in different boxes in the GUI
{											// 'x' and 'y' defines the the box in the GUI in which the specified variable will appear in

  // Create the layout
  layout = DefaultGUIModel::getLayout();

  // Create child widget and gridLayout
  fields_Box = new QGroupBox;
  QGridLayout *gridLayout = new QGridLayout;

  int from = nstate + nparam + nevent + ncomment;			// 'from' and 'to' defines the range indexes in the 'var' array to be implemented
  int to = from + n;


  for (int i = from; i < to; i++) {
  	if (var[i].flags & (PARAMETER | STATE | EVENT | COMMENT))
	{
		  param_t param;
		  param.label = new QLabel(QString::fromStdString(var[i].name), fields_Box);
		  gridLayout->addWidget(param.label, parameter.size(), 0);
		  param.edit = new DefaultGUILineEdit(fields_Box);
		  gridLayout->addWidget(param.edit, parameter.size(), 1);

		  param.label->setToolTip(QString::fromStdString(var[i].description));
		  param.edit->setToolTip(QString::fromStdString(var[i].description));

		  if (var[i].flags & PARAMETER)
		  {
			  if (var[i].flags & DOUBLE)
			  {
				  param.edit->setValidator(new QDoubleValidator(param.edit));
				  param.type = PARAMETER | DOUBLE;
			  }
			  else if (var[i].flags & UINTEGER)
			  {
				  QIntValidator *validator = new QIntValidator(param.edit);
				  param.edit->setValidator(validator);
				  validator->setBottom(0);
				  param.type = PARAMETER | UINTEGER;
			  }
			  else if (var[i].flags & INTEGER)
			  {
				  param.edit->setValidator(new QIntValidator(param.edit));
				  param.type = PARAMETER | INTEGER;
			  }
			  else
				  param.type = PARAMETER;
			  param.index = nparam++;
			  param.str_value = new QString;
		  }
		  else if (var[i].flags & STATE)
		  {
			  param.edit->setReadOnly(true);
			  palette.setBrush(param.edit->foregroundRole(), Qt::darkGray);
			  param.edit->setPalette(palette);
			  param.type = STATE;
			  param.index = nstate++;
		  }
		  else if (var[i].flags & EVENT)
		  {
			  param.edit->setReadOnly(true);
			  param.type = EVENT;
			  param.index = nevent++;
		  }
		  else if (var[i].flags & COMMENT)
		  {
			  param.type = COMMENT;
			  param.index = ncomment++;
		  }
		  parameter[QString::fromStdString(var[i].name)] = param;
	  }
  }

  // Add layout to box
  fields_Box->setLayout(gridLayout);

  // add the box in the GUI at the coordinates specified by x and y
  layout->addWidget(fields_Box, x, y);


  // Set layout to Mdi and show
  setLayout(layout);
  show();
}

void CabPK_new::customizeGUI(DefaultGUIModel::variable_t *vars, int num_vars) {

	QGridLayout *customlayout = DefaultGUIModel::getLayout();

	nstate = 0;
	nparam = 0;
	nevent = 0;
	ncomment = 0;

  	implement_vars(vars, 5, 1,0);		//each row implement a sub-group of variables, and set their appearence in the GUI to a different box
	implement_vars(vars, 6, 1,1);
	implement_vars(vars, 5, 1,2);
	implement_vars(vars, 5, 2,0);
	implement_vars(vars, 5, 2,1);
	implement_vars(vars, 5, 2,2);
	implement_vars(vars, 5, 3,0);
	implement_vars(vars, 5, 3,1);
	implement_vars(vars, 8, 3,2);
	//implement_vars(vars, 2, 4,1);
	//implement_vars(vars, num_vars - (nstate + nparam + nevent + ncomment), 4,1);



	QGroupBox *button_group = new QGroupBox;


	QPushButton *abutton = new QPushButton("DAQ Output Reset");
	QPushButton *bbutton = new QPushButton("default parameters");

	QHBoxLayout *button_layout = new QHBoxLayout;


	button_group->setLayout(button_layout);

	button_layout->addWidget(abutton);
	button_layout->addWidget(bbutton);
	QObject::connect(abutton, SIGNAL(clicked()), this, SLOT(aBttn_event()));
	QObject::connect(bbutton, SIGNAL(clicked()), this, SLOT(bBttn_event()));

	// add custom GUI components to layout above default_gui_model components
	customlayout->addWidget(button_group, 10,1,1,2,Qt::AlignLeft);




	setLayout(customlayout);

}

// functions designated as Qt slots are implemented as regular C++ functions
void CabPK_new::aBttn_event(void) {
	output(0) = 0;
	output(1) = 0;
	refresh();
}

void CabPK_new::bBttn_event(void) {
            {
            m=.05; n=.5; h=0.5, h_k=1; a=0.5; b=0.3; mmi_cabpk=0.; mmi_ccap=0.0; msyn_LG=0.0; msyn_PD=0.0; mlts = 0.0; hlts = 0.0;
	    }

    	//DC_protocol = 0.0;
    	//DC_total = 0.0;
	refresh(); // this is required to update the GUI with parameter and state values
 
}

/****************************************************************************
** Meta object code from reading C++ file 'CabPK_new.h'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.6)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "CabPK_new.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'CabPK_new.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.6. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_CabPK_new[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
       7,    6,    6,    6, 0x08,
      21,    6,    6,    6, 0x08,
      35,    6,    6,    6, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_CabPK_new[] = {
    "CabPK_new\0\0aBttn_event()\0bBttn_event()\0"
//    "updatePotassiumKinetics(bool)\0"
};

void CabPK_new::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        CabPK_new *_t = static_cast<CabPK_new *>(_o);
        switch (_id) {
        case 0: _t->aBttn_event(); break;
        case 1: _t->bBttn_event(); break;
       // case 2: _t->updatePotassiumKinetics((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData CabPK_new::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject CabPK_new::staticMetaObject = {
    { &DefaultGUIModel::staticMetaObject, qt_meta_stringdata_CabPK_new,
      qt_meta_data_CabPK_new, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &CabPK::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *CabPK_new::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *CabPK_new::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_CabPK_new))
        return static_cast<void*>(const_cast< CabPK_new*>(this));
    return DefaultGUIModel::qt_metacast(_clname);
}

int CabPK::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = DefaultGUIModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE

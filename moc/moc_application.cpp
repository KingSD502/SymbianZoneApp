/****************************************************************************
** Meta object code from reading C++ file 'application.h'
**
** Created: Mon 22. Jun 06:29:55 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../application.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'application.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_Application[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: signature, parameters, type, tag, flags
      22,   13,   12,   12, 0x05,
      39,   13,   12,   12, 0x05,
      56,   13,   12,   12, 0x05,
      73,   13,   12,   12, 0x05,
      90,   13,   12,   12, 0x05,
     112,   13,   12,   12, 0x05,
     134,   13,   12,   12, 0x05,
     156,   13,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
     182,  178,   12,   12, 0x0a,
     218,  198,   12,   12, 0x0a,
     253,   12,   12,   12, 0x0a,
     273,   12,  268,   12, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_Application[] = {
    "Application\0\0newstate\0setToggle1(bool)\0"
    "setToggle2(bool)\0setToggle3(bool)\0"
    "setToggle4(bool)\0setToggle1Check(bool)\0"
    "setToggle2Check(bool)\0setToggle3Check(bool)\0"
    "setToggle4Check(bool)\0uid\0launch(QString)\0"
    "val1,val2,val3,val4\0"
    "updateSetting(bool,bool,bool,bool)\0"
    "checkSetting()\0bool\0checkRoot()\0"
};

const QMetaObject Application::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Application,
      qt_meta_data_Application, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &Application::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *Application::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *Application::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Application))
        return static_cast<void*>(const_cast< Application*>(this));
    return QObject::qt_metacast(_clname);
}

int Application::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: setToggle1((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: setToggle2((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 2: setToggle3((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: setToggle4((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: setToggle1Check((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: setToggle2Check((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: setToggle3Check((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: setToggle4Check((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: launch((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 9: updateSetting((*reinterpret_cast< bool(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2])),(*reinterpret_cast< bool(*)>(_a[3])),(*reinterpret_cast< bool(*)>(_a[4]))); break;
        case 10: checkSetting(); break;
        case 11: { bool _r = checkRoot();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        default: ;
        }
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void Application::setToggle1(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void Application::setToggle2(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void Application::setToggle3(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void Application::setToggle4(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void Application::setToggle1Check(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void Application::setToggle2Check(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void Application::setToggle3Check(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void Application::setToggle4Check(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}
QT_END_MOC_NAMESPACE

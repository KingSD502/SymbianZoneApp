/****************************************************************************
** Meta object code from reading C++ file 'asynctask.h'
**
** Created: Mon 5. Jan 00:42:40 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../asynctask.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'asynctask.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AsyncTask[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      22,   11,   10,   10, 0x05,
      37,   10,   10,   10, 0x25,
      60,   48,   10,   10, 0x05,
      89,   83,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
     110,   10,   10,   10, 0x0a,
     116,   10,   10,   10, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_AsyncTask[] = {
    "AsyncTask\0\0inProgress\0finished(bool)\0"
    "finished()\0count,bytes\0updateProgess(int,int)\0"
    "value\0setResetNeeded(bool)\0run()\0"
    "stop()\0"
};

const QMetaObject AsyncTask::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_AsyncTask,
      qt_meta_data_AsyncTask, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AsyncTask::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AsyncTask::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AsyncTask::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AsyncTask))
        return static_cast<void*>(const_cast< AsyncTask*>(this));
    return QThread::qt_metacast(_clname);
}

int AsyncTask::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: finished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: finished(); break;
        case 2: updateProgess((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 3: setResetNeeded((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: run(); break;
        case 5: stop(); break;
        default: ;
        }
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void AsyncTask::finished(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 2
void AsyncTask::updateProgess(int _t1, int _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void AsyncTask::setResetNeeded(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE

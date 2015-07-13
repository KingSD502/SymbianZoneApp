/****************************************************************************
** Meta object code from reading C++ file 'deleteitem.h'
**
** Created: Mon 5. Jan 00:42:37 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../deleteitem.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'deleteitem.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_DeleteItem[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
       5,   79, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   12,   11,   11, 0x05,
      37,   12,   11,   11, 0x05,
      63,   12,   11,   11, 0x05,
      92,   12,   11,   11, 0x05,

 // slots: signature, parameters, type, tag, flags
     120,   12,   11,   11, 0x0a,
     137,   12,   11,   11, 0x0a,
     159,   12,   11,   11, 0x0a,
     184,   12,   11,   11, 0x0a,
     209,   12,   11,   11, 0x0a,
     239,  233,   11,   11, 0x0a,
     260,  255,   11,   11, 0x0a,
     288,  277,   11,   11, 0x0a,
     314,  309,   11,   11, 0x0a,

 // properties: name, type, flags
     341,  336, 0x01495103,
     357,  349, 0x0a495103,
     379,  367, 0x0b495103,
     388,  349, 0x0a095103,
     401,  336, 0x01495103,

 // properties: notify_signal_id
       0,
       1,
       2,
       0,
       3,

       0        // eod
};

static const char qt_meta_stringdata_DeleteItem[] = {
    "DeleteItem\0\0arg\0checkedChanged(bool)\0"
    "localNameChanged(QString)\0"
    "fileListChanged(QStringList)\0"
    "initialCheckedChanged(bool)\0"
    "setChecked(bool)\0setLocalName(QString)\0"
    "setFileList(QStringList)\0"
    "setCategoryName(QString)\0"
    "setInitialChecked(bool)\0index\0"
    "removeFile(int)\0path\0addFile(QString)\0"
    "index,path\0setFile(int,QString)\0list\0"
    "addFiles(QStringList)\0bool\0checked\0"
    "QString\0localName\0QStringList\0fileList\0"
    "categoryName\0initialChecked\0"
};

const QMetaObject DeleteItem::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_DeleteItem,
      qt_meta_data_DeleteItem, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &DeleteItem::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *DeleteItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *DeleteItem::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_DeleteItem))
        return static_cast<void*>(const_cast< DeleteItem*>(this));
    return QObject::qt_metacast(_clname);
}

int DeleteItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: checkedChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: localNameChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: fileListChanged((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 3: initialCheckedChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: setChecked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: setLocalName((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 6: setFileList((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        case 7: setCategoryName((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 8: setInitialChecked((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: removeFile((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 10: addFile((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 11: setFile((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2]))); break;
        case 12: addFiles((*reinterpret_cast< QStringList(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 13;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = getChecked(); break;
        case 1: *reinterpret_cast< QString*>(_v) = getLocalName(); break;
        case 2: *reinterpret_cast< QStringList*>(_v) = getFileList(); break;
        case 3: *reinterpret_cast< QString*>(_v) = getCategoryName(); break;
        case 4: *reinterpret_cast< bool*>(_v) = getInitialChecked(); break;
        }
        _id -= 5;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setChecked(*reinterpret_cast< bool*>(_v)); break;
        case 1: setLocalName(*reinterpret_cast< QString*>(_v)); break;
        case 2: setFileList(*reinterpret_cast< QStringList*>(_v)); break;
        case 3: setCategoryName(*reinterpret_cast< QString*>(_v)); break;
        case 4: setInitialChecked(*reinterpret_cast< bool*>(_v)); break;
        }
        _id -= 5;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 5;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 5;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void DeleteItem::checkedChanged(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void DeleteItem::localNameChanged(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void DeleteItem::fileListChanged(QStringList _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void DeleteItem::initialCheckedChanged(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE

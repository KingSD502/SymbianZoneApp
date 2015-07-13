/****************************************************************************
** Meta object code from reading C++ file 'filemodel.h'
**
** Created: Mon 5. Jan 00:42:37 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.4)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../filemodel.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'filemodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.4. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FileModel[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       2,   64, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   11,   10,   10, 0x05,
      35,   10,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
      54,   10,   10,   10, 0x08,

 // methods: signature, parameters, type, tag, flags
      83,   77,   10,   10, 0x02,
     102,   10,   10,   10, 0x02,
     124,   10,  116,   10, 0x02,
     147,  143,   10,   10, 0x02,
     176,   10,  116,   10, 0x02,
     198,  193,  188,   10, 0x02,
     209,   10,   10,   10, 0x02,

 // properties: name, type, flags
     216,  188, 0x01495001,
     224,  116, 0x0a495001,

 // properties: notify_signal_id
       1,
       1,

       0        // eod
};

static const char qt_meta_stringdata_FileModel[] = {
    "FileModel\0\0show\0showEmptyDir(bool)\0"
    "directoryChanged()\0openCurrentDirectory()\0"
    "index\0openDirectory(int)\0updateFiles()\0"
    "QString\0currentDirectory()\0dir\0"
    "setCurrentDirectory(QString)\0directory()\0"
    "bool\0path\0isDir(int)\0goUp()\0canGoUp\0"
    "directory\0"
};

const QMetaObject FileModel::staticMetaObject = {
    { &QAbstractItemModel::staticMetaObject, qt_meta_stringdata_FileModel,
      qt_meta_data_FileModel, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FileModel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FileModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FileModel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FileModel))
        return static_cast<void*>(const_cast< FileModel*>(this));
    return QAbstractItemModel::qt_metacast(_clname);
}

int FileModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractItemModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: showEmptyDir((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: directoryChanged(); break;
        case 2: openCurrentDirectory(); break;
        case 3: openDirectory((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: updateFiles(); break;
        case 5: { QString _r = currentDirectory();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 6: setCurrentDirectory((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 7: { QString _r = directory();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        case 8: { bool _r = isDir((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 9: goUp(); break;
        default: ;
        }
        _id -= 10;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< bool*>(_v) = canGoUp(); break;
        case 1: *reinterpret_cast< QString*>(_v) = directory(); break;
        }
        _id -= 2;
    } else if (_c == QMetaObject::WriteProperty) {
        _id -= 2;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 2;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 2;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void FileModel::showEmptyDir(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void FileModel::directoryChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}
QT_END_MOC_NAMESPACE

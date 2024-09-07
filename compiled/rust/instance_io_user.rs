// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUser {
    pub _root: SharedType<InstanceIoUser>,
    pub _parent: SharedType<InstanceIoUser>,
    pub _self: SharedType<Self>,
    qty_entries: RefCell<u32>,
    entries: RefCell<Vec<OptRc<InstanceIoUser_Entry>>>,
    strings: RefCell<OptRc<InstanceIoUser_StringsObj>>,
    _io: RefCell<BytesReader>,
    strings_raw: RefCell<Vec<u8>>,
}
impl KStruct for InstanceIoUser {
    type Root = InstanceIoUser;
    type Parent = InstanceIoUser;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.qty_entries.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.entries.borrow_mut() = Vec::new();
        let l_entries = *self_rc.qty_entries();
        for _i in 0..l_entries {
            let t = Self::read_into::<_, InstanceIoUser_Entry>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.entries.borrow_mut().push(t);
        }
        *self_rc.strings_raw.borrow_mut() = _io.read_bytes_full()?.into();
        let strings_raw = self_rc.strings_raw.borrow();
        let _t_strings_raw_io = BytesReader::from(strings_raw.clone());
        let t = Self::read_into::<BytesReader, InstanceIoUser_StringsObj>(&_t_strings_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.strings.borrow_mut() = t;
        Ok(())
    }
}
impl InstanceIoUser {
}
impl InstanceIoUser {
    pub fn qty_entries(&self) -> Ref<u32> {
        self.qty_entries.borrow()
    }
}
impl InstanceIoUser {
    pub fn entries(&self) -> Ref<Vec<OptRc<InstanceIoUser_Entry>>> {
        self.entries.borrow()
    }
}
impl InstanceIoUser {
    pub fn strings(&self) -> Ref<OptRc<InstanceIoUser_StringsObj>> {
        self.strings.borrow()
    }
}
impl InstanceIoUser {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl InstanceIoUser {
    pub fn strings_raw(&self) -> Ref<Vec<u8>> {
        self.strings_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUser_Entry {
    pub _root: SharedType<InstanceIoUser>,
    pub _parent: SharedType<InstanceIoUser>,
    pub _self: SharedType<Self>,
    name_ofs: RefCell<u32>,
    value: RefCell<u32>,
    _io: RefCell<BytesReader>,
    f_name: Cell<bool>,
    name: RefCell<String>,
}
impl KStruct for InstanceIoUser_Entry {
    type Root = InstanceIoUser;
    type Parent = InstanceIoUser;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.name_ofs.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.value.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl InstanceIoUser_Entry {
    pub fn name(
        &self
    ) -> KResult<Ref<String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_name.get() {
            return Ok(self.name.borrow());
        }
        self.f_name.set(true);
        let io = Clone::clone(&*_r.strings()._io());
        let _pos = io.pos();
        io.seek(*self.name_ofs() as usize)?;
        *self.name.borrow_mut() = bytes_to_str(&io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?;
        io.seek(_pos)?;
        Ok(self.name.borrow())
    }
}
impl InstanceIoUser_Entry {
    pub fn name_ofs(&self) -> Ref<u32> {
        self.name_ofs.borrow()
    }
}
impl InstanceIoUser_Entry {
    pub fn value(&self) -> Ref<u32> {
        self.value.borrow()
    }
}
impl InstanceIoUser_Entry {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceIoUser_StringsObj {
    pub _root: SharedType<InstanceIoUser>,
    pub _parent: SharedType<InstanceIoUser>,
    pub _self: SharedType<Self>,
    str: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for InstanceIoUser_StringsObj {
    type Root = InstanceIoUser;
    type Parent = InstanceIoUser;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.str.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.str.borrow_mut().push(bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl InstanceIoUser_StringsObj {
}
impl InstanceIoUser_StringsObj {
    pub fn str(&self) -> Ref<Vec<String>> {
        self.str.borrow()
    }
}
impl InstanceIoUser_StringsObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

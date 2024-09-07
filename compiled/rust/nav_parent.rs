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
pub struct NavParent {
    pub _root: SharedType<NavParent>,
    pub _parent: SharedType<NavParent>,
    pub _self: SharedType<Self>,
    header: RefCell<OptRc<NavParent_HeaderObj>>,
    index: RefCell<OptRc<NavParent_IndexObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent {
    type Root = NavParent;
    type Parent = NavParent;

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
        let t = Self::read_into::<_, NavParent_HeaderObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.header.borrow_mut() = t;
        let t = Self::read_into::<_, NavParent_IndexObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.index.borrow_mut() = t;
        Ok(())
    }
}
impl NavParent {
}
impl NavParent {
    pub fn header(&self) -> Ref<OptRc<NavParent_HeaderObj>> {
        self.header.borrow()
    }
}
impl NavParent {
    pub fn index(&self) -> Ref<OptRc<NavParent_IndexObj>> {
        self.index.borrow()
    }
}
impl NavParent {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParent_Entry {
    pub _root: SharedType<NavParent>,
    pub _parent: SharedType<NavParent_IndexObj>,
    pub _self: SharedType<Self>,
    filename: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent_Entry {
    type Root = NavParent;
    type Parent = NavParent_IndexObj;

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
        *self_rc.filename.borrow_mut() = bytes_to_str(&_io.read_bytes(*_prc.as_ref().unwrap()._parent.get_value().borrow().upgrade().as_ref().unwrap().header().filename_len() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl NavParent_Entry {
}
impl NavParent_Entry {
    pub fn filename(&self) -> Ref<String> {
        self.filename.borrow()
    }
}
impl NavParent_Entry {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParent_HeaderObj {
    pub _root: SharedType<NavParent>,
    pub _parent: SharedType<NavParent>,
    pub _self: SharedType<Self>,
    qty_entries: RefCell<u32>,
    filename_len: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent_HeaderObj {
    type Root = NavParent;
    type Parent = NavParent;

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
        *self_rc.filename_len.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl NavParent_HeaderObj {
}
impl NavParent_HeaderObj {
    pub fn qty_entries(&self) -> Ref<u32> {
        self.qty_entries.borrow()
    }
}
impl NavParent_HeaderObj {
    pub fn filename_len(&self) -> Ref<u32> {
        self.filename_len.borrow()
    }
}
impl NavParent_HeaderObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParent_IndexObj {
    pub _root: SharedType<NavParent>,
    pub _parent: SharedType<NavParent>,
    pub _self: SharedType<Self>,
    magic: RefCell<Vec<u8>>,
    entries: RefCell<Vec<OptRc<NavParent_Entry>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent_IndexObj {
    type Root = NavParent;
    type Parent = NavParent;

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
        *self_rc.magic.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        *self_rc.entries.borrow_mut() = Vec::new();
        let l_entries = *_prc.as_ref().unwrap().header().qty_entries();
        for _i in 0..l_entries {
            let t = Self::read_into::<_, NavParent_Entry>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.entries.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl NavParent_IndexObj {
}
impl NavParent_IndexObj {
    pub fn magic(&self) -> Ref<Vec<u8>> {
        self.magic.borrow()
    }
}
impl NavParent_IndexObj {
    pub fn entries(&self) -> Ref<Vec<OptRc<NavParent_Entry>>> {
        self.entries.borrow()
    }
}
impl NavParent_IndexObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

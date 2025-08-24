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
pub struct NavRoot {
    pub _root: SharedType<NavRoot>,
    pub _parent: SharedType<NavRoot>,
    pub _self: SharedType<Self>,
    header: RefCell<OptRc<NavRoot_HeaderObj>>,
    index: RefCell<OptRc<NavRoot_IndexObj>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavRoot {
    type Root = NavRoot;
    type Parent = NavRoot;

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
        let t = Self::read_into::<_, NavRoot_HeaderObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.header.borrow_mut() = t;
        let t = Self::read_into::<_, NavRoot_IndexObj>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.index.borrow_mut() = t;
        Ok(())
    }
}
impl NavRoot {
}
impl NavRoot {
    pub fn header(&self) -> Ref<'_, OptRc<NavRoot_HeaderObj>> {
        self.header.borrow()
    }
}
impl NavRoot {
    pub fn index(&self) -> Ref<'_, OptRc<NavRoot_IndexObj>> {
        self.index.borrow()
    }
}
impl NavRoot {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavRoot_Entry {
    pub _root: SharedType<NavRoot>,
    pub _parent: SharedType<NavRoot_IndexObj>,
    pub _self: SharedType<Self>,
    filename: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavRoot_Entry {
    type Root = NavRoot;
    type Parent = NavRoot_IndexObj;

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
        *self_rc.filename.borrow_mut() = bytes_to_str(&_io.read_bytes(*_r.header().filename_len() as usize)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl NavRoot_Entry {
}
impl NavRoot_Entry {
    pub fn filename(&self) -> Ref<'_, String> {
        self.filename.borrow()
    }
}
impl NavRoot_Entry {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavRoot_HeaderObj {
    pub _root: SharedType<NavRoot>,
    pub _parent: SharedType<NavRoot>,
    pub _self: SharedType<Self>,
    qty_entries: RefCell<u32>,
    filename_len: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavRoot_HeaderObj {
    type Root = NavRoot;
    type Parent = NavRoot;

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
impl NavRoot_HeaderObj {
}
impl NavRoot_HeaderObj {
    pub fn qty_entries(&self) -> Ref<'_, u32> {
        self.qty_entries.borrow()
    }
}
impl NavRoot_HeaderObj {
    pub fn filename_len(&self) -> Ref<'_, u32> {
        self.filename_len.borrow()
    }
}
impl NavRoot_HeaderObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavRoot_IndexObj {
    pub _root: SharedType<NavRoot>,
    pub _parent: SharedType<NavRoot>,
    pub _self: SharedType<Self>,
    magic: RefCell<Vec<u8>>,
    entries: RefCell<Vec<OptRc<NavRoot_Entry>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavRoot_IndexObj {
    type Root = NavRoot;
    type Parent = NavRoot;

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
        let l_entries = *_r.header().qty_entries();
        for _i in 0..l_entries {
            let t = Self::read_into::<_, NavRoot_Entry>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.entries.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl NavRoot_IndexObj {
}
impl NavRoot_IndexObj {
    pub fn magic(&self) -> Ref<'_, Vec<u8>> {
        self.magic.borrow()
    }
}
impl NavRoot_IndexObj {
    pub fn entries(&self) -> Ref<'_, Vec<OptRc<NavRoot_Entry>>> {
        self.entries.borrow()
    }
}
impl NavRoot_IndexObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

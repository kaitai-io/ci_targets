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
pub struct ProcessToUser {
    pub _root: SharedType<ProcessToUser>,
    pub _parent: SharedType<ProcessToUser>,
    pub _self: SharedType<Self>,
    buf1: RefCell<OptRc<ProcessToUser_JustStr>>,
    _io: RefCell<BytesReader>,
    buf1_raw: RefCell<Vec<u8>>,
    buf1_raw_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessToUser {
    type Root = ProcessToUser;
    type Parent = ProcessToUser;

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
        *self_rc.buf1_raw_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.buf1_raw.borrow_mut() = process_rotate_left(&self_rc.buf1_raw_raw.borrow(), 3);
        let buf1_raw = self_rc.buf1_raw.borrow();
        let _t_buf1_raw_io = BytesReader::from(buf1_raw.clone());
        let t = Self::read_into::<BytesReader, ProcessToUser_JustStr>(&_t_buf1_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.buf1.borrow_mut() = t;
        Ok(())
    }
}
impl ProcessToUser {
}
impl ProcessToUser {
    pub fn buf1(&self) -> Ref<OptRc<ProcessToUser_JustStr>> {
        self.buf1.borrow()
    }
}
impl ProcessToUser {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ProcessToUser {
    pub fn buf1_raw(&self) -> Ref<Vec<u8>> {
        self.buf1_raw.borrow()
    }
}
impl ProcessToUser {
    pub fn buf1_raw_raw(&self) -> Ref<Vec<u8>> {
        self.buf1_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ProcessToUser_JustStr {
    pub _root: SharedType<ProcessToUser>,
    pub _parent: SharedType<ProcessToUser>,
    pub _self: SharedType<Self>,
    str: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ProcessToUser_JustStr {
    type Root = ProcessToUser;
    type Parent = ProcessToUser;

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
        *self_rc.str.borrow_mut() = bytes_to_str(&_io.read_bytes_full()?.into(), "UTF-8")?;
        Ok(())
    }
}
impl ProcessToUser_JustStr {
}
impl ProcessToUser_JustStr {
    pub fn str(&self) -> Ref<String> {
        self.str.borrow()
    }
}
impl ProcessToUser_JustStr {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

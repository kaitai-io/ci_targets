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
pub struct ProcessRotate {
    pub _root: SharedType<ProcessRotate>,
    pub _parent: SharedType<ProcessRotate>,
    pub _self: SharedType<Self>,
    buf1: RefCell<Vec<u8>>,
    buf2: RefCell<Vec<u8>>,
    key: RefCell<u8>,
    buf3: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    buf1_raw: RefCell<Vec<u8>>,
    buf2_raw: RefCell<Vec<u8>>,
    buf3_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessRotate {
    type Root = ProcessRotate;
    type Parent = ProcessRotate;

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
        *self_rc.buf1_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.buf1.borrow_mut() = process_rotate_left(&self_rc.buf1_raw.borrow(), 3);
        *self_rc.buf2_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.buf2.borrow_mut() = process_rotate_left(&self_rc.buf2_raw.borrow(), 8 - (3));
        *self_rc.key.borrow_mut() = _io.read_u1()?.into();
        *self_rc.buf3_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        *self_rc.buf3.borrow_mut() = process_rotate_left(&self_rc.buf3_raw.borrow(), *self_rc.key());
        Ok(())
    }
}
impl ProcessRotate {
}
impl ProcessRotate {
    pub fn buf1(&self) -> Ref<Vec<u8>> {
        self.buf1.borrow()
    }
}
impl ProcessRotate {
    pub fn buf2(&self) -> Ref<Vec<u8>> {
        self.buf2.borrow()
    }
}
impl ProcessRotate {
    pub fn key(&self) -> Ref<u8> {
        self.key.borrow()
    }
}
impl ProcessRotate {
    pub fn buf3(&self) -> Ref<Vec<u8>> {
        self.buf3.borrow()
    }
}
impl ProcessRotate {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRotate {
    pub fn buf1_raw(&self) -> Ref<Vec<u8>> {
        self.buf1_raw.borrow()
    }
}
impl ProcessRotate {
    pub fn buf2_raw(&self) -> Ref<Vec<u8>> {
        self.buf2_raw.borrow()
    }
}
impl ProcessRotate {
    pub fn buf3_raw(&self) -> Ref<Vec<u8>> {
        self.buf3_raw.borrow()
    }
}

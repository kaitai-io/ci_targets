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
pub struct BytesPadTermEqual {
    pub _root: SharedType<BytesPadTermEqual>,
    pub _parent: SharedType<BytesPadTermEqual>,
    pub _self: SharedType<Self>,
    s1: RefCell<Vec<u8>>,
    s2: RefCell<Vec<u8>>,
    s3: RefCell<Vec<u8>>,
    s4: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesPadTermEqual {
    type Root = BytesPadTermEqual;
    type Parent = BytesPadTermEqual;

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
        *self_rc.s1.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 64).into(), 64, false).into();
        *self_rc.s2.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 43).into(), 64, true).into();
        *self_rc.s3.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 43).into(), 43, false).into();
        *self_rc.s4.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 46).into(), 46, true).into();
        Ok(())
    }
}
impl BytesPadTermEqual {
}
impl BytesPadTermEqual {
    pub fn s1(&self) -> Ref<'_, Vec<u8>> {
        self.s1.borrow()
    }
}
impl BytesPadTermEqual {
    pub fn s2(&self) -> Ref<'_, Vec<u8>> {
        self.s2.borrow()
    }
}
impl BytesPadTermEqual {
    pub fn s3(&self) -> Ref<'_, Vec<u8>> {
        self.s3.borrow()
    }
}
impl BytesPadTermEqual {
    pub fn s4(&self) -> Ref<'_, Vec<u8>> {
        self.s4.borrow()
    }
}
impl BytesPadTermEqual {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

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
pub struct BytesPadTermZeroSize {
    pub _root: SharedType<BytesPadTermZeroSize>,
    pub _parent: SharedType<BytesPadTermZeroSize>,
    pub _self: SharedType<Self>,
    str_pad: RefCell<Vec<u8>>,
    str_term: RefCell<Vec<u8>>,
    str_term_and_pad: RefCell<Vec<u8>>,
    str_term_include: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BytesPadTermZeroSize {
    type Root = BytesPadTermZeroSize;
    type Parent = BytesPadTermZeroSize;

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
        *self_rc.str_pad.borrow_mut() = bytes_strip_right(&_io.read_bytes(0 as usize)?.into(), 64).into();
        *self_rc.str_term.borrow_mut() = bytes_terminate(&_io.read_bytes(0 as usize)?.into(), 64, false).into();
        *self_rc.str_term_and_pad.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(0 as usize)?.into(), 43).into(), 64, false).into();
        *self_rc.str_term_include.borrow_mut() = bytes_terminate(&_io.read_bytes(0 as usize)?.into(), 64, true).into();
        Ok(())
    }
}
impl BytesPadTermZeroSize {
}
impl BytesPadTermZeroSize {
    pub fn str_pad(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad.borrow()
    }
}
impl BytesPadTermZeroSize {
    pub fn str_term(&self) -> Ref<'_, Vec<u8>> {
        self.str_term.borrow()
    }
}
impl BytesPadTermZeroSize {
    pub fn str_term_and_pad(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad.borrow()
    }
}
impl BytesPadTermZeroSize {
    pub fn str_term_include(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include.borrow()
    }
}
impl BytesPadTermZeroSize {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

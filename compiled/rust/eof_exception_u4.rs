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
pub struct EofExceptionU4 {
    pub _root: SharedType<EofExceptionU4>,
    pub _parent: SharedType<EofExceptionU4>,
    pub _self: SharedType<Self>,
    prebuf: RefCell<Vec<u8>>,
    fail_int: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EofExceptionU4 {
    type Root = EofExceptionU4;
    type Parent = EofExceptionU4;

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
        *self_rc.prebuf.borrow_mut() = _io.read_bytes(9 as usize)?.into();
        *self_rc.fail_int.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl EofExceptionU4 {
}
impl EofExceptionU4 {
    pub fn prebuf(&self) -> Ref<'_, Vec<u8>> {
        self.prebuf.borrow()
    }
}
impl EofExceptionU4 {
    pub fn fail_int(&self) -> Ref<'_, u32> {
        self.fail_int.borrow()
    }
}
impl EofExceptionU4 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

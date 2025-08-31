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
pub struct EofExceptionBitsLe {
    pub _root: SharedType<EofExceptionBitsLe>,
    pub _parent: SharedType<EofExceptionBitsLe>,
    pub _self: SharedType<Self>,
    pre_bits: RefCell<u64>,
    fail_bits: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EofExceptionBitsLe {
    type Root = EofExceptionBitsLe;
    type Parent = EofExceptionBitsLe;

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
        *self_rc.pre_bits.borrow_mut() = _io.read_bits_int_le(7)?;
        *self_rc.fail_bits.borrow_mut() = _io.read_bits_int_le(18)?;
        Ok(())
    }
}
impl EofExceptionBitsLe {
}
impl EofExceptionBitsLe {
    pub fn pre_bits(&self) -> Ref<'_, u64> {
        self.pre_bits.borrow()
    }
}
impl EofExceptionBitsLe {
    pub fn fail_bits(&self) -> Ref<'_, u64> {
        self.fail_bits.borrow()
    }
}
impl EofExceptionBitsLe {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

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
pub struct FixedContents {
    pub _root: SharedType<FixedContents>,
    pub _parent: SharedType<FixedContents>,
    pub _self: SharedType<Self>,
    normal: RefCell<Vec<u8>>,
    high_bit_8: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for FixedContents {
    type Root = FixedContents;
    type Parent = FixedContents;

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
        *self_rc.normal.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        if !(*self_rc.normal() == vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x31u8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
        }
        *self_rc.high_bit_8.borrow_mut() = _io.read_bytes(2 as usize)?.into();
        if !(*self_rc.high_bit_8() == vec![0xffu8, 0xffu8]) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/1".to_string() }));
        }
        Ok(())
    }
}
impl FixedContents {
}
impl FixedContents {
    pub fn normal(&self) -> Ref<Vec<u8>> {
        self.normal.borrow()
    }
}
impl FixedContents {
    pub fn high_bit_8(&self) -> Ref<Vec<u8>> {
        self.high_bit_8.borrow()
    }
}
impl FixedContents {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

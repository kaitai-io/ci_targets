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
pub struct ValidOptionalId {
    pub _root: SharedType<ValidOptionalId>,
    pub _parent: SharedType<ValidOptionalId>,
    pub _self: SharedType<Self>,
    unnamed0: RefCell<Vec<u8>>,
    unnamed1: RefCell<u8>,
    unnamed2: RefCell<i8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidOptionalId {
    type Root = ValidOptionalId;
    type Parent = ValidOptionalId;

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
        *self_rc.unnamed0.borrow_mut() = _io.read_bytes(6 as usize)?.into();
        if !(((*self_rc.unnamed0() as Vec<u8>) == (vec![0x50u8, 0x41u8, 0x43u8, 0x4bu8, 0x2du8, 0x31u8] as Vec<u8>))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
        }
        *self_rc.unnamed1.borrow_mut() = _io.read_u1()?.into();
        if !(((*self_rc.unnamed1() as u8) == (255 as u8))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/1".to_string() }));
        }
        *self_rc.unnamed2.borrow_mut() = _io.read_s1()?.into();
        let _tmpa = *self_rc.unnamed2();
        if !(((_tmpa as i32) == (-1 as i32))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::Expr, src_path: "/seq/2".to_string() }));
        }
        Ok(())
    }
}
impl ValidOptionalId {
}
impl ValidOptionalId {
    pub fn unnamed0(&self) -> Ref<Vec<u8>> {
        self.unnamed0.borrow()
    }
}
impl ValidOptionalId {
    pub fn unnamed1(&self) -> Ref<u8> {
        self.unnamed1.borrow()
    }
}
impl ValidOptionalId {
    pub fn unnamed2(&self) -> Ref<i8> {
        self.unnamed2.borrow()
    }
}
impl ValidOptionalId {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

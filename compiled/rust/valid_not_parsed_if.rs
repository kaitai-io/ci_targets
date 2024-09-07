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
pub struct ValidNotParsedIf {
    pub _root: SharedType<ValidNotParsedIf>,
    pub _parent: SharedType<ValidNotParsedIf>,
    pub _self: SharedType<Self>,
    not_parsed: RefCell<u8>,
    parsed: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidNotParsedIf {
    type Root = ValidNotParsedIf;
    type Parent = ValidNotParsedIf;

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
        if false {
            *self_rc.not_parsed.borrow_mut() = _io.read_u1()?.into();
            if !(((*self_rc.not_parsed() as u8) == (42 as u8))) {
                return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
            }
        }
        if true {
            *self_rc.parsed.borrow_mut() = _io.read_u1()?.into();
            if !(((*self_rc.parsed() as u8) == (80 as u8))) {
                return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/1".to_string() }));
            }
        }
        Ok(())
    }
}
impl ValidNotParsedIf {
}
impl ValidNotParsedIf {
    pub fn not_parsed(&self) -> Ref<u8> {
        self.not_parsed.borrow()
    }
}
impl ValidNotParsedIf {
    pub fn parsed(&self) -> Ref<u8> {
        self.parsed.borrow()
    }
}
impl ValidNotParsedIf {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

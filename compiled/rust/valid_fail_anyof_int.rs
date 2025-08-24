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
pub struct ValidFailAnyofInt {
    pub _root: SharedType<ValidFailAnyofInt>,
    pub _parent: SharedType<ValidFailAnyofInt>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailAnyofInt {
    type Root = ValidFailAnyofInt;
    type Parent = ValidFailAnyofInt;

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
        *self_rc.foo.borrow_mut() = _io.read_u1()?.into();
        if !( ((((*self_rc.foo() as u8) == (5 as u8))) || (((*self_rc.foo() as u8) == (6 as u8))) || (((*self_rc.foo() as u8) == (7 as u8))) || (((*self_rc.foo() as u8) == (8 as u8))) || (((*self_rc.foo() as u8) == (10 as u8))) || (((*self_rc.foo() as u8) == (11 as u8))) || (((*self_rc.foo() as u8) == (12 as u8))) || (((*self_rc.foo() as u8) == (47 as u8)))) ) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotAnyOf, src_path: "/seq/0".to_string() }));
        }
        Ok(())
    }
}
impl ValidFailAnyofInt {
}
impl ValidFailAnyofInt {
    pub fn foo(&self) -> Ref<'_, u8> {
        self.foo.borrow()
    }
}
impl ValidFailAnyofInt {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

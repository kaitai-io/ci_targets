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
pub struct ValidFailExpr {
    pub _root: SharedType<ValidFailExpr>,
    pub _parent: SharedType<ValidFailExpr>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    bar: RefCell<i16>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailExpr {
    type Root = ValidFailExpr;
    type Parent = ValidFailExpr;

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
        let _tmpa = *self_rc.foo();
        if !(((_tmpa as u8) == (1 as u8))) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::Expr, src_path: "/seq/0".to_string() }));
        }
        *self_rc.bar.borrow_mut() = _io.read_s2le()?.into();
        let _tmpa = *self_rc.bar();
        if !( ((((_tmpa as i32) < (-190 as i32))) || (((_tmpa as i32) > (-190 as i32)))) ) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::Expr, src_path: "/seq/1".to_string() }));
        }
        Ok(())
    }
}
impl ValidFailExpr {
}
impl ValidFailExpr {
    pub fn foo(&self) -> Ref<u8> {
        self.foo.borrow()
    }
}
impl ValidFailExpr {
    pub fn bar(&self) -> Ref<i16> {
        self.bar.borrow()
    }
}
impl ValidFailExpr {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

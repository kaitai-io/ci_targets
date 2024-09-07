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
pub struct ValidFailEqStr {
    pub _root: SharedType<ValidFailEqStr>,
    pub _parent: SharedType<ValidFailEqStr>,
    pub _self: SharedType<Self>,
    foo: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailEqStr {
    type Root = ValidFailEqStr;
    type Parent = ValidFailEqStr;

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
        *self_rc.foo.borrow_mut() = bytes_to_str(&_io.read_bytes(4 as usize)?.into(), "ASCII")?;
        if !(*self_rc.foo() == "BACK".to_string()) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::NotEqual, src_path: "/seq/0".to_string() }));
        }
        Ok(())
    }
}
impl ValidFailEqStr {
}
impl ValidFailEqStr {
    pub fn foo(&self) -> Ref<String> {
        self.foo.borrow()
    }
}
impl ValidFailEqStr {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

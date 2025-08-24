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
pub struct ValidFailRangeStr {
    pub _root: SharedType<ValidFailRangeStr>,
    pub _parent: SharedType<ValidFailRangeStr>,
    pub _self: SharedType<Self>,
    foo: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ValidFailRangeStr {
    type Root = ValidFailRangeStr;
    type Parent = ValidFailRangeStr;

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
        *self_rc.foo.borrow_mut() = bytes_to_str(&_io.read_bytes(2 as usize)?.into(), "ASCII")?;
        if !(*self_rc.foo() >= "P".to_string()) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::LessThan, src_path: "/seq/0".to_string() }));
        }
        if !(*self_rc.foo() <= "P1".to_string()) {
            return Err(KError::ValidationFailed(ValidationFailedError { kind: ValidationKind::GreaterThan, src_path: "/seq/0".to_string() }));
        }
        Ok(())
    }
}
impl ValidFailRangeStr {
}
impl ValidFailRangeStr {
    pub fn foo(&self) -> Ref<'_, String> {
        self.foo.borrow()
    }
}
impl ValidFailRangeStr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

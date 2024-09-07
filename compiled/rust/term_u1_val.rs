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
pub struct TermU1Val {
    pub _root: SharedType<TermU1Val>,
    pub _parent: SharedType<TermU1Val>,
    pub _self: SharedType<Self>,
    foo: RefCell<Vec<u8>>,
    bar: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermU1Val {
    type Root = TermU1Val;
    type Parent = TermU1Val;

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
        *self_rc.foo.borrow_mut() = _io.read_bytes_term(227, false, false, true)?.into();
        *self_rc.bar.borrow_mut() = bytes_to_str(&_io.read_bytes_term(171, true, true, true)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl TermU1Val {
}
impl TermU1Val {
    pub fn foo(&self) -> Ref<Vec<u8>> {
        self.foo.borrow()
    }
}
impl TermU1Val {
    pub fn bar(&self) -> Ref<String> {
        self.bar.borrow()
    }
}
impl TermU1Val {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

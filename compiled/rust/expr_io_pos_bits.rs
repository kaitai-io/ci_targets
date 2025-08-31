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
pub struct ExprIoPosBits {
    pub _root: SharedType<ExprIoPosBits>,
    pub _parent: SharedType<ExprIoPosBits>,
    pub _self: SharedType<Self>,
    foo: RefCell<u64>,
    bar: RefCell<u64>,
    baz: RefCell<bool>,
    qux: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ExprIoPosBits {
    type Root = ExprIoPosBits;
    type Parent = ExprIoPosBits;

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
        *self_rc.foo.borrow_mut() = _io.read_bits_int_be(3)?;
        if ((_io.pos() as i32) == (1 as i32)) {
            *self_rc.bar.borrow_mut() = _io.read_bits_int_be(5)?;
        }
        if ((_io.pos() as i32) == (1 as i32)) {
            *self_rc.baz.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        }
        if ((_io.pos() as i32) == (2 as i32)) {
            *self_rc.qux.borrow_mut() = _io.read_bits_int_be(7)?;
        }
        Ok(())
    }
}
impl ExprIoPosBits {
}
impl ExprIoPosBits {
    pub fn foo(&self) -> Ref<'_, u64> {
        self.foo.borrow()
    }
}
impl ExprIoPosBits {
    pub fn bar(&self) -> Ref<'_, u64> {
        self.bar.borrow()
    }
}
impl ExprIoPosBits {
    pub fn baz(&self) -> Ref<'_, bool> {
        self.baz.borrow()
    }
}
impl ExprIoPosBits {
    pub fn qux(&self) -> Ref<'_, u64> {
        self.qux.borrow()
    }
}
impl ExprIoPosBits {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

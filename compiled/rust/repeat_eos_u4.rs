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
pub struct RepeatEosU4 {
    pub _root: SharedType<RepeatEosU4>,
    pub _parent: SharedType<RepeatEosU4>,
    pub _self: SharedType<Self>,
    numbers: RefCell<Vec<u32>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatEosU4 {
    type Root = RepeatEosU4;
    type Parent = RepeatEosU4;

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
        *self_rc.numbers.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.numbers.borrow_mut().push(_io.read_u4le()?.into());
                _i += 1;
            }
        }
        Ok(())
    }
}
impl RepeatEosU4 {
}
impl RepeatEosU4 {
    pub fn numbers(&self) -> Ref<Vec<u32>> {
        self.numbers.borrow()
    }
}
impl RepeatEosU4 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

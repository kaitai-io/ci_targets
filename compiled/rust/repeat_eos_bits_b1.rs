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
pub struct RepeatEosBitsB1 {
    pub _root: SharedType<RepeatEosBitsB1>,
    pub _parent: SharedType<RepeatEosBitsB1>,
    pub _self: SharedType<Self>,
    bits: RefCell<Vec<bool>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatEosBitsB1 {
    type Root = RepeatEosBitsB1;
    type Parent = RepeatEosBitsB1;

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
        *self_rc.bits.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                self_rc.bits.borrow_mut().push(_io.read_bits_int_be(1)? != 0);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl RepeatEosBitsB1 {
}
impl RepeatEosBitsB1 {
    pub fn bits(&self) -> Ref<'_, Vec<bool>> {
        self.bits.borrow()
    }
}
impl RepeatEosBitsB1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

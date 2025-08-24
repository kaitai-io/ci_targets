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
pub struct BitsSeqEndianCombo {
    pub _root: SharedType<BitsSeqEndianCombo>,
    pub _parent: SharedType<BitsSeqEndianCombo>,
    pub _self: SharedType<Self>,
    be1: RefCell<u64>,
    be2: RefCell<u64>,
    le3: RefCell<u64>,
    be4: RefCell<u64>,
    le5: RefCell<u64>,
    le6: RefCell<u64>,
    le7: RefCell<u64>,
    be8: RefCell<bool>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsSeqEndianCombo {
    type Root = BitsSeqEndianCombo;
    type Parent = BitsSeqEndianCombo;

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
        *self_rc.be1.borrow_mut() = _io.read_bits_int_be(6)?;
        *self_rc.be2.borrow_mut() = _io.read_bits_int_be(10)?;
        *self_rc.le3.borrow_mut() = _io.read_bits_int_le(8)?;
        *self_rc.be4.borrow_mut() = _io.read_bits_int_be(8)?;
        *self_rc.le5.borrow_mut() = _io.read_bits_int_le(5)?;
        *self_rc.le6.borrow_mut() = _io.read_bits_int_le(6)?;
        *self_rc.le7.borrow_mut() = _io.read_bits_int_le(5)?;
        *self_rc.be8.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        Ok(())
    }
}
impl BitsSeqEndianCombo {
}
impl BitsSeqEndianCombo {
    pub fn be1(&self) -> Ref<'_, u64> {
        self.be1.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn be2(&self) -> Ref<'_, u64> {
        self.be2.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn le3(&self) -> Ref<'_, u64> {
        self.le3.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn be4(&self) -> Ref<'_, u64> {
        self.be4.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn le5(&self) -> Ref<'_, u64> {
        self.le5.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn le6(&self) -> Ref<'_, u64> {
        self.le6.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn le7(&self) -> Ref<'_, u64> {
        self.le7.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn be8(&self) -> Ref<'_, bool> {
        self.be8.borrow()
    }
}
impl BitsSeqEndianCombo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

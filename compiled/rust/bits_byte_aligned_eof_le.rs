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
pub struct BitsByteAlignedEofLe {
    pub _root: SharedType<BitsByteAlignedEofLe>,
    pub _parent: SharedType<BitsByteAlignedEofLe>,
    pub _self: SharedType<Self>,
    prebuf: RefCell<Vec<u8>>,
    bits: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsByteAlignedEofLe {
    type Root = BitsByteAlignedEofLe;
    type Parent = BitsByteAlignedEofLe;

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
        *self_rc.prebuf.borrow_mut() = _io.read_bytes(8 as usize)?.into();
        *self_rc.bits.borrow_mut() = _io.read_bits_int_le(31)?;
        Ok(())
    }
}
impl BitsByteAlignedEofLe {
}
impl BitsByteAlignedEofLe {
    pub fn prebuf(&self) -> Ref<'_, Vec<u8>> {
        self.prebuf.borrow()
    }
}
impl BitsByteAlignedEofLe {
    pub fn bits(&self) -> Ref<'_, u64> {
        self.bits.borrow()
    }
}
impl BitsByteAlignedEofLe {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

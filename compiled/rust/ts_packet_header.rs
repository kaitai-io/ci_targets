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

/**
 * describes the first 4 header bytes of a TS Packet header
 */

#[derive(Default, Debug, Clone)]
pub struct TsPacketHeader {
    pub _root: SharedType<TsPacketHeader>,
    pub _parent: SharedType<TsPacketHeader>,
    pub _self: SharedType<Self>,
    sync_byte: RefCell<u8>,
    transport_error_indicator: RefCell<bool>,
    payload_unit_start_indicator: RefCell<bool>,
    transport_priority: RefCell<bool>,
    pid: RefCell<u64>,
    transport_scrambling_control: RefCell<u64>,
    adaptation_field_control: RefCell<TsPacketHeader_AdaptationFieldControlEnum>,
    continuity_counter: RefCell<u64>,
    ts_packet_remain: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TsPacketHeader {
    type Root = TsPacketHeader;
    type Parent = TsPacketHeader;

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
        *self_rc.sync_byte.borrow_mut() = _io.read_u1()?.into();
        *self_rc.transport_error_indicator.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.payload_unit_start_indicator.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.transport_priority.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.pid.borrow_mut() = _io.read_bits_int_be(13)?;
        *self_rc.transport_scrambling_control.borrow_mut() = _io.read_bits_int_be(2)?;
        *self_rc.adaptation_field_control.borrow_mut() = (_io.read_bits_int_be(2)? as i64).try_into()?;
        *self_rc.continuity_counter.borrow_mut() = _io.read_bits_int_be(4)?;
        _io.align_to_byte()?;
        *self_rc.ts_packet_remain.borrow_mut() = _io.read_bytes(184 as usize)?.into();
        Ok(())
    }
}
impl TsPacketHeader {
}
impl TsPacketHeader {
    pub fn sync_byte(&self) -> Ref<u8> {
        self.sync_byte.borrow()
    }
}
impl TsPacketHeader {
    pub fn transport_error_indicator(&self) -> Ref<bool> {
        self.transport_error_indicator.borrow()
    }
}
impl TsPacketHeader {
    pub fn payload_unit_start_indicator(&self) -> Ref<bool> {
        self.payload_unit_start_indicator.borrow()
    }
}
impl TsPacketHeader {
    pub fn transport_priority(&self) -> Ref<bool> {
        self.transport_priority.borrow()
    }
}
impl TsPacketHeader {
    pub fn pid(&self) -> Ref<u64> {
        self.pid.borrow()
    }
}
impl TsPacketHeader {
    pub fn transport_scrambling_control(&self) -> Ref<u64> {
        self.transport_scrambling_control.borrow()
    }
}
impl TsPacketHeader {
    pub fn adaptation_field_control(&self) -> Ref<TsPacketHeader_AdaptationFieldControlEnum> {
        self.adaptation_field_control.borrow()
    }
}
impl TsPacketHeader {
    pub fn continuity_counter(&self) -> Ref<u64> {
        self.continuity_counter.borrow()
    }
}
impl TsPacketHeader {
    pub fn ts_packet_remain(&self) -> Ref<Vec<u8>> {
        self.ts_packet_remain.borrow()
    }
}
impl TsPacketHeader {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum TsPacketHeader_AdaptationFieldControlEnum {
    Reserved,
    PayloadOnly,
    AdaptationFieldOnly,
    AdaptationFieldAndPayload,
    Unknown(i64),
}

impl TryFrom<i64> for TsPacketHeader_AdaptationFieldControlEnum {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<TsPacketHeader_AdaptationFieldControlEnum> {
        match flag {
            0 => Ok(TsPacketHeader_AdaptationFieldControlEnum::Reserved),
            1 => Ok(TsPacketHeader_AdaptationFieldControlEnum::PayloadOnly),
            2 => Ok(TsPacketHeader_AdaptationFieldControlEnum::AdaptationFieldOnly),
            3 => Ok(TsPacketHeader_AdaptationFieldControlEnum::AdaptationFieldAndPayload),
            _ => Ok(TsPacketHeader_AdaptationFieldControlEnum::Unknown(flag)),
        }
    }
}

impl From<&TsPacketHeader_AdaptationFieldControlEnum> for i64 {
    fn from(v: &TsPacketHeader_AdaptationFieldControlEnum) -> Self {
        match *v {
            TsPacketHeader_AdaptationFieldControlEnum::Reserved => 0,
            TsPacketHeader_AdaptationFieldControlEnum::PayloadOnly => 1,
            TsPacketHeader_AdaptationFieldControlEnum::AdaptationFieldOnly => 2,
            TsPacketHeader_AdaptationFieldControlEnum::AdaptationFieldAndPayload => 3,
            TsPacketHeader_AdaptationFieldControlEnum::Unknown(v) => v
        }
    }
}

impl Default for TsPacketHeader_AdaptationFieldControlEnum {
    fn default() -> Self { TsPacketHeader_AdaptationFieldControlEnum::Unknown(0) }
}


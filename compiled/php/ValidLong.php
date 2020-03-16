<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidLong extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidLong $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic1 = $this->_io->readBytes(6);
            $this->_m_uint8 = $this->_io->readU1();
            $this->_m_sint8 = $this->_io->readS1();
            $this->_m_magicUint = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(10), "utf-8");
            $this->_m_uint16 = $this->_io->readU2le();
            $this->_m_uint32 = $this->_io->readU4le();
            $this->_m_uint64 = $this->_io->readU8le();
            $this->_m_magicSint = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(10), "utf-8");
            $this->_m_sint16 = $this->_io->readS2le();
            $this->_m_sint32 = $this->_io->readS4le();
            $this->_m_sint64 = $this->_io->readS8le();
        }
        protected $_m_magic1;
        protected $_m_uint8;
        protected $_m_sint8;
        protected $_m_magicUint;
        protected $_m_uint16;
        protected $_m_uint32;
        protected $_m_uint64;
        protected $_m_magicSint;
        protected $_m_sint16;
        protected $_m_sint32;
        protected $_m_sint64;
        public function magic1() { return $this->_m_magic1; }
        public function uint8() { return $this->_m_uint8; }
        public function sint8() { return $this->_m_sint8; }
        public function magicUint() { return $this->_m_magicUint; }
        public function uint16() { return $this->_m_uint16; }
        public function uint32() { return $this->_m_uint32; }
        public function uint64() { return $this->_m_uint64; }
        public function magicSint() { return $this->_m_magicSint; }
        public function sint16() { return $this->_m_sint16; }
        public function sint32() { return $this->_m_sint32; }
        public function sint64() { return $this->_m_sint64; }
    }
}

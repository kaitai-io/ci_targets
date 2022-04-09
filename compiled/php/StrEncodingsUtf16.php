<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrEncodingsUtf16 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrEncodingsUtf16 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenBe = $this->_io->readU4le();
            $this->_m__raw_beBomRemoved = $this->_io->readBytes($this->lenBe());
            $_io__raw_beBomRemoved = new \Kaitai\Struct\Stream($this->_m__raw_beBomRemoved);
            $this->_m_beBomRemoved = new \Kaitai\Struct\Tests\StrEncodingsUtf16\StrBeBomRemoved($_io__raw_beBomRemoved, $this, $this->_root);
            $this->_m_lenLe = $this->_io->readU4le();
            $this->_m__raw_leBomRemoved = $this->_io->readBytes($this->lenLe());
            $_io__raw_leBomRemoved = new \Kaitai\Struct\Stream($this->_m__raw_leBomRemoved);
            $this->_m_leBomRemoved = new \Kaitai\Struct\Tests\StrEncodingsUtf16\StrLeBomRemoved($_io__raw_leBomRemoved, $this, $this->_root);
        }
        protected $_m_lenBe;
        protected $_m_beBomRemoved;
        protected $_m_lenLe;
        protected $_m_leBomRemoved;
        protected $_m__raw_beBomRemoved;
        protected $_m__raw_leBomRemoved;
        public function lenBe() { return $this->_m_lenBe; }
        public function beBomRemoved() { return $this->_m_beBomRemoved; }
        public function lenLe() { return $this->_m_lenLe; }
        public function leBomRemoved() { return $this->_m_leBomRemoved; }
        public function _raw_beBomRemoved() { return $this->_m__raw_beBomRemoved; }
        public function _raw_leBomRemoved() { return $this->_m__raw_leBomRemoved; }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsUtf16 {
    class StrBeBomRemoved extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsUtf16 $_parent = null, \Kaitai\Struct\Tests\StrEncodingsUtf16 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_bom = $this->_io->readU2be();
            $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "UTF-16BE");
        }
        protected $_m_bom;
        protected $_m_str;
        public function bom() { return $this->_m_bom; }
        public function str() { return $this->_m_str; }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsUtf16 {
    class StrLeBomRemoved extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsUtf16 $_parent = null, \Kaitai\Struct\Tests\StrEncodingsUtf16 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_bom = $this->_io->readU2le();
            $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "UTF-16LE");
        }
        protected $_m_bom;
        protected $_m_str;
        public function bom() { return $this->_m_bom; }
        public function str() { return $this->_m_str; }
    }
}

<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class IntegersMinMax extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\IntegersMinMax $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_unsignedMin = new \Kaitai\Struct\Tests\IntegersMinMax\Unsigned($this->_io, $this, $this->_root);
            $this->_m_unsignedMax = new \Kaitai\Struct\Tests\IntegersMinMax\Unsigned($this->_io, $this, $this->_root);
            $this->_m_signedMin = new \Kaitai\Struct\Tests\IntegersMinMax\Signed($this->_io, $this, $this->_root);
            $this->_m_signedMax = new \Kaitai\Struct\Tests\IntegersMinMax\Signed($this->_io, $this, $this->_root);
        }
        protected $_m_unsignedMin;
        protected $_m_unsignedMax;
        protected $_m_signedMin;
        protected $_m_signedMax;
        public function unsignedMin() { return $this->_m_unsignedMin; }
        public function unsignedMax() { return $this->_m_unsignedMax; }
        public function signedMin() { return $this->_m_signedMin; }
        public function signedMax() { return $this->_m_signedMax; }
    }
}

namespace Kaitai\Struct\Tests\IntegersMinMax {
    class Signed extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IntegersMinMax $_parent = null, \Kaitai\Struct\Tests\IntegersMinMax $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_s1 = $this->_io->readS1();
            $this->_m_s2le = $this->_io->readS2le();
            $this->_m_s4le = $this->_io->readS4le();
            $this->_m_s8le = $this->_io->readS8le();
            $this->_m_s2be = $this->_io->readS2be();
            $this->_m_s4be = $this->_io->readS4be();
            $this->_m_s8be = $this->_io->readS8be();
        }
        protected $_m_s1;
        protected $_m_s2le;
        protected $_m_s4le;
        protected $_m_s8le;
        protected $_m_s2be;
        protected $_m_s4be;
        protected $_m_s8be;
        public function s1() { return $this->_m_s1; }
        public function s2le() { return $this->_m_s2le; }
        public function s4le() { return $this->_m_s4le; }
        public function s8le() { return $this->_m_s8le; }
        public function s2be() { return $this->_m_s2be; }
        public function s4be() { return $this->_m_s4be; }
        public function s8be() { return $this->_m_s8be; }
    }
}

namespace Kaitai\Struct\Tests\IntegersMinMax {
    class Unsigned extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IntegersMinMax $_parent = null, \Kaitai\Struct\Tests\IntegersMinMax $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_u1 = $this->_io->readU1();
            $this->_m_u2le = $this->_io->readU2le();
            $this->_m_u4le = $this->_io->readU4le();
            $this->_m_u8le = $this->_io->readU8le();
            $this->_m_u2be = $this->_io->readU2be();
            $this->_m_u4be = $this->_io->readU4be();
            $this->_m_u8be = $this->_io->readU8be();
        }
        protected $_m_u1;
        protected $_m_u2le;
        protected $_m_u4le;
        protected $_m_u8le;
        protected $_m_u2be;
        protected $_m_u4be;
        protected $_m_u8be;
        public function u1() { return $this->_m_u1; }
        public function u2le() { return $this->_m_u2le; }
        public function u4le() { return $this->_m_u4le; }
        public function u8le() { return $this->_m_u8le; }
        public function u2be() { return $this->_m_u2be; }
        public function u4be() { return $this->_m_u4be; }
        public function u8be() { return $this->_m_u8be; }
    }
}

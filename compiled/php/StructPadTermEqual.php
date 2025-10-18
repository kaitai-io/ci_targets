<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StructPadTermEqual extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\StructPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_s1 = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 64), 64, false);
            $_io__raw_s1 = new \Kaitai\Struct\Stream($this->_m__raw_s1);
            $this->_m_s1 = new \Kaitai\Struct\Tests\StructPadTermEqual\BytesWrapper($_io__raw_s1, $this, $this->_root);
            $this->_m__raw_s2 = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 43), 64, true);
            $_io__raw_s2 = new \Kaitai\Struct\Stream($this->_m__raw_s2);
            $this->_m_s2 = new \Kaitai\Struct\Tests\StructPadTermEqual\BytesWrapper($_io__raw_s2, $this, $this->_root);
            $this->_m__raw_s3 = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 43), 43, false);
            $_io__raw_s3 = new \Kaitai\Struct\Stream($this->_m__raw_s3);
            $this->_m_s3 = new \Kaitai\Struct\Tests\StructPadTermEqual\BytesWrapper($_io__raw_s3, $this, $this->_root);
            $this->_m__raw_s4 = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 46), 46, true);
            $_io__raw_s4 = new \Kaitai\Struct\Stream($this->_m__raw_s4);
            $this->_m_s4 = new \Kaitai\Struct\Tests\StructPadTermEqual\BytesWrapper($_io__raw_s4, $this, $this->_root);
        }
        public function s1() { return $this->_m_s1; }
        public function s2() { return $this->_m_s2; }
        public function s3() { return $this->_m_s3; }
        public function s4() { return $this->_m_s4; }
        public function _raw_s1() { return $this->_m__raw_s1; }
        public function _raw_s2() { return $this->_m__raw_s2; }
        public function _raw_s3() { return $this->_m__raw_s3; }
        public function _raw_s4() { return $this->_m__raw_s4; }
        protected $_m_s1;
        protected $_m_s2;
        protected $_m_s3;
        protected $_m_s4;
        protected $_m__raw_s1;
        protected $_m__raw_s2;
        protected $_m__raw_s3;
        protected $_m__raw_s4;
    }
}

namespace Kaitai\Struct\Tests\StructPadTermEqual {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StructPadTermEqual $_parent = null, ?\Kaitai\Struct\Tests\StructPadTermEqual $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytesFull();
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessRotate extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessRotate $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_buf1 = $this->_io->readBytes(5);
            $this->_m_buf1 = \Kaitai\Struct\Stream::processRotateLeft($this->_m__raw_buf1, 3, 1);
            $this->_m__raw_buf2 = $this->_io->readBytes(5);
            $this->_m_buf2 = \Kaitai\Struct\Stream::processRotateLeft($this->_m__raw_buf2, 8 - (3), 1);
            $this->_m_key = $this->_io->readU1();
            $this->_m__raw_buf3 = $this->_io->readBytes(5);
            $this->_m_buf3 = \Kaitai\Struct\Stream::processRotateLeft($this->_m__raw_buf3, $this->key(), 1);
        }
        public function buf1() { return $this->_m_buf1; }
        public function buf2() { return $this->_m_buf2; }
        public function key() { return $this->_m_key; }
        public function buf3() { return $this->_m_buf3; }
        public function _raw_buf1() { return $this->_m__raw_buf1; }
        public function _raw_buf2() { return $this->_m__raw_buf2; }
        public function _raw_buf3() { return $this->_m__raw_buf3; }
        protected $_m_buf1;
        protected $_m_buf2;
        protected $_m_key;
        protected $_m_buf3;
        protected $_m__raw_buf1;
        protected $_m__raw_buf2;
        protected $_m__raw_buf3;
    }
}

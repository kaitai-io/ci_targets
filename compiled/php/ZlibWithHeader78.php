<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ZlibWithHeader78 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ZlibWithHeader78 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_data = $this->_io->readBytesFull();
            $this->_m_data = \Kaitai\Struct\Stream::processZlib($this->_m__raw_data);
        }
        protected $_m_data;
        protected $_m__raw_data;
        public function data() { return $this->_m_data; }
        public function _raw_data() { return $this->_m__raw_data; }
    }
}

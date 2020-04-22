<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ZlibSurrounded extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ZlibSurrounded $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pre = $this->_io->readBytes(4);
            $this->_m__raw__raw_zlib = $this->_io->readBytes(12);
            $this->_m__raw_zlib = \Kaitai\Struct\Stream::processZlib($this->_m__raw__raw_zlib);
            $_io__raw_zlib = new \Kaitai\Struct\Stream($this->_m__raw_zlib);
            $this->_m_zlib = new \Kaitai\Struct\Tests\ZlibSurrounded\Inflated($_io__raw_zlib, $this, $this->_root);
            $this->_m_post = $this->_io->readBytes(4);
        }
        protected $_m_pre;
        protected $_m_zlib;
        protected $_m_post;
        protected $_m__raw_zlib;
        protected $_m__raw__raw_zlib;
        public function pre() { return $this->_m_pre; }
        public function zlib() { return $this->_m_zlib; }
        public function post() { return $this->_m_post; }
        public function _raw_zlib() { return $this->_m__raw_zlib; }
        public function _raw__raw_zlib() { return $this->_m__raw__raw_zlib; }
    }
}

namespace Kaitai\Struct\Tests\ZlibSurrounded {
    class Inflated extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ZlibSurrounded $_parent = null, \Kaitai\Struct\Tests\ZlibSurrounded $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_num = $this->_io->readS4le();
        }
        protected $_m_num;
        public function num() { return $this->_m_num; }
    }
}

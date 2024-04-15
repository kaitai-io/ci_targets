<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class YamlInts extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\YamlInts $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_testU4Dec;
        public function testU4Dec() {
            if ($this->_m_testU4Dec !== null)
                return $this->_m_testU4Dec;
            $this->_m_testU4Dec = 4294967295;
            return $this->_m_testU4Dec;
        }
        protected $_m_testU4Hex;
        public function testU4Hex() {
            if ($this->_m_testU4Hex !== null)
                return $this->_m_testU4Hex;
            $this->_m_testU4Hex = 4294967295;
            return $this->_m_testU4Hex;
        }
        protected $_m_testU8Dec;
        public function testU8Dec() {
            if ($this->_m_testU8Dec !== null)
                return $this->_m_testU8Dec;
            $this->_m_testU8Dec = -1;
            return $this->_m_testU8Dec;
        }
        protected $_m_testU8Hex;
        public function testU8Hex() {
            if ($this->_m_testU8Hex !== null)
                return $this->_m_testU8Hex;
            $this->_m_testU8Hex = -1;
            return $this->_m_testU8Hex;
        }
    }
}

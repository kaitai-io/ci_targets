<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class JsSignedRightShift extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\JsSignedRightShift $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_shouldBe40000000;
        public function shouldBe40000000() {
            if ($this->_m_shouldBe40000000 !== null)
                return $this->_m_shouldBe40000000;
            $this->_m_shouldBe40000000 = 2147483648 >> 1;
            return $this->_m_shouldBe40000000;
        }
        protected $_m_shouldBeA00000;
        public function shouldBeA00000() {
            if ($this->_m_shouldBeA00000 !== null)
                return $this->_m_shouldBeA00000;
            $this->_m_shouldBeA00000 = 2684354560 >> 8;
            return $this->_m_shouldBeA00000;
        }
    }
}

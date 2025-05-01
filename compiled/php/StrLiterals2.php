<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrLiterals2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\StrLiterals2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_atSign;
        public function atSign() {
            if ($this->_m_atSign !== null)
                return $this->_m_atSign;
            $this->_m_atSign = "@foo";
            return $this->_m_atSign;
        }
        protected $_m_dollar1;
        public function dollar1() {
            if ($this->_m_dollar1 !== null)
                return $this->_m_dollar1;
            $this->_m_dollar1 = "\$foo";
            return $this->_m_dollar1;
        }
        protected $_m_dollar2;
        public function dollar2() {
            if ($this->_m_dollar2 !== null)
                return $this->_m_dollar2;
            $this->_m_dollar2 = "\${foo}";
            return $this->_m_dollar2;
        }
        protected $_m_hash;
        public function hash() {
            if ($this->_m_hash !== null)
                return $this->_m_hash;
            $this->_m_hash = "#{foo}";
            return $this->_m_hash;
        }
    }
}

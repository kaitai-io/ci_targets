<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumToIClassBorder2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Tests\EnumToIClassBorder1 $parent, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumToIClassBorder2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m_parent = $parent;
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_isDog;
        public function isDog() {
            if ($this->_m_isDog !== null)
                return $this->_m_isDog;
            $this->_m_isDog = $this->parent()->someDog() == 4;
            return $this->_m_isDog;
        }
        protected $_m_parent;
        public function parent() { return $this->_m_parent; }
    }
}

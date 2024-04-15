<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DebugArrayUser extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\DebugArrayUser $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
        }

        public function _read() {
            $this->_m_oneCat = new \Kaitai\Struct\Tests\DebugArrayUser\Cat($this->_io, $this, $this->_root);
            $this->_m_oneCat->_read();
            $this->_m_arrayOfCats = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $_t_arrayOfCats = new \Kaitai\Struct\Tests\DebugArrayUser\Cat($this->_io, $this, $this->_root);
                $this->_m_arrayOfCats[] = $_t_arrayOfCats;
                $_t_arrayOfCats->_read();
            }
        }
        protected $_m_oneCat;
        protected $_m_arrayOfCats;
        public function oneCat() { return $this->_m_oneCat; }
        public function arrayOfCats() { return $this->_m_arrayOfCats; }
    }
}

namespace Kaitai\Struct\Tests\DebugArrayUser {
    class Cat extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DebugArrayUser $_parent = null, \Kaitai\Struct\Tests\DebugArrayUser $_root = null) {
            parent::__construct($_io, $_parent, $_root);
        }

        public function _read() {
            $this->_m_meow = $this->_io->readU1();
        }
        protected $_m_meow;
        public function meow() { return $this->_m_meow; }
    }
}

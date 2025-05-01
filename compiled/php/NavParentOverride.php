<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentOverride extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NavParentOverride $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_childSize = $this->_io->readU1();
            $this->_m_child1 = new \Kaitai\Struct\Tests\NavParentOverride\Child($this->_io, $this, $this->_root);
            $this->_m_mediator2 = new \Kaitai\Struct\Tests\NavParentOverride\Mediator($this->_io, $this, $this->_root);
        }
        protected $_m_childSize;
        protected $_m_child1;
        protected $_m_mediator2;
        public function childSize() { return $this->_m_childSize; }
        public function child1() { return $this->_m_child1; }
        public function mediator2() { return $this->_m_mediator2; }
    }
}

namespace Kaitai\Struct\Tests\NavParentOverride {
    class Child extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParentOverride $_parent = null, ?\Kaitai\Struct\Tests\NavParentOverride $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_data = $this->_io->readBytes($this->_parent()->childSize());
        }
        protected $_m_data;
        public function data() { return $this->_m_data; }
    }
}

namespace Kaitai\Struct\Tests\NavParentOverride {
    class Mediator extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParentOverride $_parent = null, ?\Kaitai\Struct\Tests\NavParentOverride $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_child2 = new \Kaitai\Struct\Tests\NavParentOverride\Child($this->_io, $this->_parent(), $this->_root);
        }
        protected $_m_child2;
        public function child2() { return $this->_m_child2; }
    }
}

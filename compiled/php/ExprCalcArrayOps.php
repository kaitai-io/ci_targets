<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprCalcArrayOps extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprCalcArrayOps $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        public function doubleArray() {
            if ($this->_m_doubleArray !== null)
                return $this->_m_doubleArray;
            $this->_m_doubleArray = [10.0, 25.0, 50.0, 100.0, 3.14159];
            return $this->_m_doubleArray;
        }
        public function doubleArrayFirst() {
            if ($this->_m_doubleArrayFirst !== null)
                return $this->_m_doubleArrayFirst;
            $this->_m_doubleArrayFirst = $this->doubleArray()[0];
            return $this->_m_doubleArrayFirst;
        }
        public function doubleArrayLast() {
            if ($this->_m_doubleArrayLast !== null)
                return $this->_m_doubleArrayLast;
            $this->_m_doubleArrayLast = $this->doubleArray()[count($this->doubleArray()) - 1];
            return $this->_m_doubleArrayLast;
        }
        public function doubleArrayMax() {
            if ($this->_m_doubleArrayMax !== null)
                return $this->_m_doubleArrayMax;
            $this->_m_doubleArrayMax = max($this->doubleArray());
            return $this->_m_doubleArrayMax;
        }
        public function doubleArrayMid() {
            if ($this->_m_doubleArrayMid !== null)
                return $this->_m_doubleArrayMid;
            $this->_m_doubleArrayMid = $this->doubleArray()[1];
            return $this->_m_doubleArrayMid;
        }
        public function doubleArrayMin() {
            if ($this->_m_doubleArrayMin !== null)
                return $this->_m_doubleArrayMin;
            $this->_m_doubleArrayMin = min($this->doubleArray());
            return $this->_m_doubleArrayMin;
        }
        public function doubleArraySize() {
            if ($this->_m_doubleArraySize !== null)
                return $this->_m_doubleArraySize;
            $this->_m_doubleArraySize = count($this->doubleArray());
            return $this->_m_doubleArraySize;
        }
        public function intArray() {
            if ($this->_m_intArray !== null)
                return $this->_m_intArray;
            $this->_m_intArray = [10, 25, 50, 100, 200, 500, 1000];
            return $this->_m_intArray;
        }
        public function intArrayFirst() {
            if ($this->_m_intArrayFirst !== null)
                return $this->_m_intArrayFirst;
            $this->_m_intArrayFirst = $this->intArray()[0];
            return $this->_m_intArrayFirst;
        }
        public function intArrayLast() {
            if ($this->_m_intArrayLast !== null)
                return $this->_m_intArrayLast;
            $this->_m_intArrayLast = $this->intArray()[count($this->intArray()) - 1];
            return $this->_m_intArrayLast;
        }
        public function intArrayMax() {
            if ($this->_m_intArrayMax !== null)
                return $this->_m_intArrayMax;
            $this->_m_intArrayMax = max($this->intArray());
            return $this->_m_intArrayMax;
        }
        public function intArrayMid() {
            if ($this->_m_intArrayMid !== null)
                return $this->_m_intArrayMid;
            $this->_m_intArrayMid = $this->intArray()[1];
            return $this->_m_intArrayMid;
        }
        public function intArrayMin() {
            if ($this->_m_intArrayMin !== null)
                return $this->_m_intArrayMin;
            $this->_m_intArrayMin = min($this->intArray());
            return $this->_m_intArrayMin;
        }
        public function intArraySize() {
            if ($this->_m_intArraySize !== null)
                return $this->_m_intArraySize;
            $this->_m_intArraySize = count($this->intArray());
            return $this->_m_intArraySize;
        }
        public function strArray() {
            if ($this->_m_strArray !== null)
                return $this->_m_strArray;
            $this->_m_strArray = ["un", "deux", "trois", "quatre"];
            return $this->_m_strArray;
        }
        public function strArrayFirst() {
            if ($this->_m_strArrayFirst !== null)
                return $this->_m_strArrayFirst;
            $this->_m_strArrayFirst = $this->strArray()[0];
            return $this->_m_strArrayFirst;
        }
        public function strArrayLast() {
            if ($this->_m_strArrayLast !== null)
                return $this->_m_strArrayLast;
            $this->_m_strArrayLast = $this->strArray()[count($this->strArray()) - 1];
            return $this->_m_strArrayLast;
        }
        public function strArrayMax() {
            if ($this->_m_strArrayMax !== null)
                return $this->_m_strArrayMax;
            $this->_m_strArrayMax = max($this->strArray());
            return $this->_m_strArrayMax;
        }
        public function strArrayMid() {
            if ($this->_m_strArrayMid !== null)
                return $this->_m_strArrayMid;
            $this->_m_strArrayMid = $this->strArray()[1];
            return $this->_m_strArrayMid;
        }
        public function strArrayMin() {
            if ($this->_m_strArrayMin !== null)
                return $this->_m_strArrayMin;
            $this->_m_strArrayMin = min($this->strArray());
            return $this->_m_strArrayMin;
        }
        public function strArraySize() {
            if ($this->_m_strArraySize !== null)
                return $this->_m_strArraySize;
            $this->_m_strArraySize = count($this->strArray());
            return $this->_m_strArraySize;
        }
        protected $_m_doubleArray;
        protected $_m_doubleArrayFirst;
        protected $_m_doubleArrayLast;
        protected $_m_doubleArrayMax;
        protected $_m_doubleArrayMid;
        protected $_m_doubleArrayMin;
        protected $_m_doubleArraySize;
        protected $_m_intArray;
        protected $_m_intArrayFirst;
        protected $_m_intArrayLast;
        protected $_m_intArrayMax;
        protected $_m_intArrayMid;
        protected $_m_intArrayMin;
        protected $_m_intArraySize;
        protected $_m_strArray;
        protected $_m_strArrayFirst;
        protected $_m_strArrayLast;
        protected $_m_strArrayMax;
        protected $_m_strArrayMid;
        protected $_m_strArrayMin;
        protected $_m_strArraySize;
    }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class FloatingPoints : KaitaiStruct
    {
        public static FloatingPoints FromFile(string fileName)
        {
            return new FloatingPoints(new KaitaiStream(fileName));
        }

        public FloatingPoints(KaitaiStream io, KaitaiStruct parent = null, FloatingPoints root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_singleValuePlusInt = false;
            f_singleValuePlusFloat = false;
            f_doubleValuePlusFloat = false;
            _singleValue = m_io.ReadF4le();
            _doubleValue = m_io.ReadF8le();
            _singleValueBe = m_io.ReadF4be();
            _doubleValueBe = m_io.ReadF8be();
            _approximateValue = m_io.ReadF4le();
        }
        private bool f_singleValuePlusInt;
        private double _singleValuePlusInt;
        public double SingleValuePlusInt
        {
            get
            {
                if (f_singleValuePlusInt)
                    return _singleValuePlusInt;
                _singleValuePlusInt = (double) ((SingleValue + 1));
                f_singleValuePlusInt = true;
                return _singleValuePlusInt;
            }
        }
        private bool f_singleValuePlusFloat;
        private double _singleValuePlusFloat;
        public double SingleValuePlusFloat
        {
            get
            {
                if (f_singleValuePlusFloat)
                    return _singleValuePlusFloat;
                _singleValuePlusFloat = (double) ((SingleValue + 0.5));
                f_singleValuePlusFloat = true;
                return _singleValuePlusFloat;
            }
        }
        private bool f_doubleValuePlusFloat;
        private double _doubleValuePlusFloat;
        public double DoubleValuePlusFloat
        {
            get
            {
                if (f_doubleValuePlusFloat)
                    return _doubleValuePlusFloat;
                _doubleValuePlusFloat = (double) ((DoubleValue + 0.05));
                f_doubleValuePlusFloat = true;
                return _doubleValuePlusFloat;
            }
        }
        private float _singleValue;
        private double _doubleValue;
        private float _singleValueBe;
        private double _doubleValueBe;
        private float _approximateValue;
        private FloatingPoints m_root;
        private KaitaiStruct m_parent;
        public float SingleValue { get { return _singleValue; } }
        public double DoubleValue { get { return _doubleValue; } }
        public float SingleValueBe { get { return _singleValueBe; } }
        public double DoubleValueBe { get { return _doubleValueBe; } }
        public float ApproximateValue { get { return _approximateValue; } }
        public FloatingPoints M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class FloatToI : KaitaiStruct
    {
        public static FloatToI FromFile(string fileName)
        {
            return new FloatToI(new KaitaiStream(fileName));
        }

        public FloatToI(KaitaiStream io, KaitaiStruct parent = null, FloatToI root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_float2I = false;
            f_calcFloat1 = false;
            f_float4I = false;
            f_calcFloat3 = false;
            f_calcFloat2 = false;
            f_float1I = false;
            f_doubleI = false;
            f_float3I = false;
            f_singleI = false;
            f_calcFloat4 = false;
            _read();
        }
        private void _read() {
            _singleValue = m_io.ReadF4le();
            _doubleValue = m_io.ReadF8le();
        }
        private bool f_float2I;
        private int _float2I;
        public int Float2I
        {
            get
            {
                if (f_float2I)
                    return _float2I;
                _float2I = (int) ((long) (CalcFloat2));
                f_float2I = true;
                return _float2I;
            }
        }
        private bool f_calcFloat1;
        private double _calcFloat1;
        public double CalcFloat1
        {
            get
            {
                if (f_calcFloat1)
                    return _calcFloat1;
                _calcFloat1 = (double) (1.234);
                f_calcFloat1 = true;
                return _calcFloat1;
            }
        }
        private bool f_float4I;
        private int _float4I;
        public int Float4I
        {
            get
            {
                if (f_float4I)
                    return _float4I;
                _float4I = (int) ((long) (CalcFloat4));
                f_float4I = true;
                return _float4I;
            }
        }
        private bool f_calcFloat3;
        private double _calcFloat3;
        public double CalcFloat3
        {
            get
            {
                if (f_calcFloat3)
                    return _calcFloat3;
                _calcFloat3 = (double) (1.9);
                f_calcFloat3 = true;
                return _calcFloat3;
            }
        }
        private bool f_calcFloat2;
        private double _calcFloat2;
        public double CalcFloat2
        {
            get
            {
                if (f_calcFloat2)
                    return _calcFloat2;
                _calcFloat2 = (double) (1.5);
                f_calcFloat2 = true;
                return _calcFloat2;
            }
        }
        private bool f_float1I;
        private int _float1I;
        public int Float1I
        {
            get
            {
                if (f_float1I)
                    return _float1I;
                _float1I = (int) ((long) (CalcFloat1));
                f_float1I = true;
                return _float1I;
            }
        }
        private bool f_doubleI;
        private int _doubleI;
        public int DoubleI
        {
            get
            {
                if (f_doubleI)
                    return _doubleI;
                _doubleI = (int) ((long) (DoubleValue));
                f_doubleI = true;
                return _doubleI;
            }
        }
        private bool f_float3I;
        private int _float3I;
        public int Float3I
        {
            get
            {
                if (f_float3I)
                    return _float3I;
                _float3I = (int) ((long) (CalcFloat3));
                f_float3I = true;
                return _float3I;
            }
        }
        private bool f_singleI;
        private int _singleI;
        public int SingleI
        {
            get
            {
                if (f_singleI)
                    return _singleI;
                _singleI = (int) ((long) (SingleValue));
                f_singleI = true;
                return _singleI;
            }
        }
        private bool f_calcFloat4;
        private double _calcFloat4;
        public double CalcFloat4
        {
            get
            {
                if (f_calcFloat4)
                    return _calcFloat4;
                _calcFloat4 = (double) (-2.7);
                f_calcFloat4 = true;
                return _calcFloat4;
            }
        }
        private float _singleValue;
        private double _doubleValue;
        private FloatToI m_root;
        private KaitaiStruct m_parent;
        public float SingleValue { get { return _singleValue; } }
        public double DoubleValue { get { return _doubleValue; } }
        public FloatToI M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Linq;

namespace Kaitai
{
    public partial class ExprBytesOps : KaitaiStruct
    {
        public static ExprBytesOps FromFile(string fileName)
        {
            return new ExprBytesOps(new KaitaiStream(fileName));
        }

        public ExprBytesOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprBytesOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneFirst = false;
            f_oneLast = false;
            f_oneMax = false;
            f_oneMid = false;
            f_oneMin = false;
            f_oneSize = false;
            f_oneToS = false;
            f_two = false;
            f_twoFirst = false;
            f_twoLast = false;
            f_twoMax = false;
            f_twoMid = false;
            f_twoMin = false;
            f_twoSize = false;
            f_twoToS = false;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadBytes(3);
        }
        private bool f_oneFirst;
        private byte _oneFirst;
        public byte OneFirst
        {
            get
            {
                if (f_oneFirst)
                    return _oneFirst;
                f_oneFirst = true;
                _oneFirst = (byte) (One[0]);
                return _oneFirst;
            }
        }
        private bool f_oneLast;
        private byte _oneLast;
        public byte OneLast
        {
            get
            {
                if (f_oneLast)
                    return _oneLast;
                f_oneLast = true;
                _oneLast = (byte) (One[One.Length - 1]);
                return _oneLast;
            }
        }
        private bool f_oneMax;
        private byte _oneMax;
        public byte OneMax
        {
            get
            {
                if (f_oneMax)
                    return _oneMax;
                f_oneMax = true;
                _oneMax = (byte) (One.Max());
                return _oneMax;
            }
        }
        private bool f_oneMid;
        private byte _oneMid;
        public byte OneMid
        {
            get
            {
                if (f_oneMid)
                    return _oneMid;
                f_oneMid = true;
                _oneMid = (byte) (One[1]);
                return _oneMid;
            }
        }
        private bool f_oneMin;
        private byte _oneMin;
        public byte OneMin
        {
            get
            {
                if (f_oneMin)
                    return _oneMin;
                f_oneMin = true;
                _oneMin = (byte) (One.Min());
                return _oneMin;
            }
        }
        private bool f_oneSize;
        private int _oneSize;
        public int OneSize
        {
            get
            {
                if (f_oneSize)
                    return _oneSize;
                f_oneSize = true;
                _oneSize = (int) (One.Length);
                return _oneSize;
            }
        }
        private bool f_oneToS;
        private string _oneToS;
        public string OneToS
        {
            get
            {
                if (f_oneToS)
                    return _oneToS;
                f_oneToS = true;
                _oneToS = (string) (System.Text.Encoding.GetEncoding("IBM866").GetString(One));
                return _oneToS;
            }
        }
        private bool f_two;
        private byte[] _two;
        public byte[] Two
        {
            get
            {
                if (f_two)
                    return _two;
                f_two = true;
                _two = (byte[]) (new byte[] { 65, 255, 75 });
                return _two;
            }
        }
        private bool f_twoFirst;
        private byte _twoFirst;
        public byte TwoFirst
        {
            get
            {
                if (f_twoFirst)
                    return _twoFirst;
                f_twoFirst = true;
                _twoFirst = (byte) (Two[0]);
                return _twoFirst;
            }
        }
        private bool f_twoLast;
        private byte _twoLast;
        public byte TwoLast
        {
            get
            {
                if (f_twoLast)
                    return _twoLast;
                f_twoLast = true;
                _twoLast = (byte) (Two[Two.Length - 1]);
                return _twoLast;
            }
        }
        private bool f_twoMax;
        private byte _twoMax;
        public byte TwoMax
        {
            get
            {
                if (f_twoMax)
                    return _twoMax;
                f_twoMax = true;
                _twoMax = (byte) (Two.Max());
                return _twoMax;
            }
        }
        private bool f_twoMid;
        private byte _twoMid;
        public byte TwoMid
        {
            get
            {
                if (f_twoMid)
                    return _twoMid;
                f_twoMid = true;
                _twoMid = (byte) (Two[1]);
                return _twoMid;
            }
        }
        private bool f_twoMin;
        private byte _twoMin;
        public byte TwoMin
        {
            get
            {
                if (f_twoMin)
                    return _twoMin;
                f_twoMin = true;
                _twoMin = (byte) (Two.Min());
                return _twoMin;
            }
        }
        private bool f_twoSize;
        private int _twoSize;
        public int TwoSize
        {
            get
            {
                if (f_twoSize)
                    return _twoSize;
                f_twoSize = true;
                _twoSize = (int) (Two.Length);
                return _twoSize;
            }
        }
        private bool f_twoToS;
        private string _twoToS;
        public string TwoToS
        {
            get
            {
                if (f_twoToS)
                    return _twoToS;
                f_twoToS = true;
                _twoToS = (string) (System.Text.Encoding.GetEncoding("IBM866").GetString(Two));
                return _twoToS;
            }
        }
        private byte[] _one;
        private ExprBytesOps m_root;
        private KaitaiStruct m_parent;
        public byte[] One { get { return _one; } }
        public ExprBytesOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class StrCombine : KaitaiStruct
    {
        public static StrCombine FromFile(string fileName)
        {
            return new StrCombine(new KaitaiStream(fileName));
        }

        public StrCombine(KaitaiStream p__io, KaitaiStruct p__parent = null, StrCombine p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_limitOrCalcBytes = false;
            f_limitOrCalc = false;
            f_termOrLimit = false;
            f_limitOrEos = false;
            f_calcOrCalcBytes = false;
            f_strCalcBytes = false;
            f_eosOrCalc = false;
            f_termOrCalc = false;
            f_termOrCalcBytes = false;
            f_termOrEos = false;
            f_strCalc = false;
            f_eosOrCalcBytes = false;
            f_calcBytes = false;
            _read();
        }
        private void _read()
        {
            _strTerm = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesTerm(124, false, true, true));
            _strLimit = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(4));
            _strEos = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytesFull());
        }
        private bool f_limitOrCalcBytes;
        private string _limitOrCalcBytes;
        public string LimitOrCalcBytes
        {
            get
            {
                if (f_limitOrCalcBytes)
                    return _limitOrCalcBytes;
                _limitOrCalcBytes = (string) ((true ? StrLimit : StrCalcBytes));
                f_limitOrCalcBytes = true;
                return _limitOrCalcBytes;
            }
        }
        private bool f_limitOrCalc;
        private string _limitOrCalc;
        public string LimitOrCalc
        {
            get
            {
                if (f_limitOrCalc)
                    return _limitOrCalc;
                _limitOrCalc = (string) ((false ? StrLimit : StrCalc));
                f_limitOrCalc = true;
                return _limitOrCalc;
            }
        }
        private bool f_termOrLimit;
        private string _termOrLimit;
        public string TermOrLimit
        {
            get
            {
                if (f_termOrLimit)
                    return _termOrLimit;
                _termOrLimit = (string) ((true ? StrTerm : StrLimit));
                f_termOrLimit = true;
                return _termOrLimit;
            }
        }
        private bool f_limitOrEos;
        private string _limitOrEos;
        public string LimitOrEos
        {
            get
            {
                if (f_limitOrEos)
                    return _limitOrEos;
                _limitOrEos = (string) ((true ? StrLimit : StrEos));
                f_limitOrEos = true;
                return _limitOrEos;
            }
        }
        private bool f_calcOrCalcBytes;
        private string _calcOrCalcBytes;
        public string CalcOrCalcBytes
        {
            get
            {
                if (f_calcOrCalcBytes)
                    return _calcOrCalcBytes;
                _calcOrCalcBytes = (string) ((false ? StrCalc : StrCalcBytes));
                f_calcOrCalcBytes = true;
                return _calcOrCalcBytes;
            }
        }
        private bool f_strCalcBytes;
        private string _strCalcBytes;
        public string StrCalcBytes
        {
            get
            {
                if (f_strCalcBytes)
                    return _strCalcBytes;
                _strCalcBytes = (string) (System.Text.Encoding.GetEncoding("ASCII").GetString(CalcBytes));
                f_strCalcBytes = true;
                return _strCalcBytes;
            }
        }
        private bool f_eosOrCalc;
        private string _eosOrCalc;
        public string EosOrCalc
        {
            get
            {
                if (f_eosOrCalc)
                    return _eosOrCalc;
                _eosOrCalc = (string) ((false ? StrEos : StrCalc));
                f_eosOrCalc = true;
                return _eosOrCalc;
            }
        }
        private bool f_termOrCalc;
        private string _termOrCalc;
        public string TermOrCalc
        {
            get
            {
                if (f_termOrCalc)
                    return _termOrCalc;
                _termOrCalc = (string) ((true ? StrTerm : StrCalc));
                f_termOrCalc = true;
                return _termOrCalc;
            }
        }
        private bool f_termOrCalcBytes;
        private string _termOrCalcBytes;
        public string TermOrCalcBytes
        {
            get
            {
                if (f_termOrCalcBytes)
                    return _termOrCalcBytes;
                _termOrCalcBytes = (string) ((false ? StrTerm : StrCalcBytes));
                f_termOrCalcBytes = true;
                return _termOrCalcBytes;
            }
        }
        private bool f_termOrEos;
        private string _termOrEos;
        public string TermOrEos
        {
            get
            {
                if (f_termOrEos)
                    return _termOrEos;
                _termOrEos = (string) ((false ? StrTerm : StrEos));
                f_termOrEos = true;
                return _termOrEos;
            }
        }
        private bool f_strCalc;
        private string _strCalc;
        public string StrCalc
        {
            get
            {
                if (f_strCalc)
                    return _strCalc;
                _strCalc = (string) ("bar");
                f_strCalc = true;
                return _strCalc;
            }
        }
        private bool f_eosOrCalcBytes;
        private string _eosOrCalcBytes;
        public string EosOrCalcBytes
        {
            get
            {
                if (f_eosOrCalcBytes)
                    return _eosOrCalcBytes;
                _eosOrCalcBytes = (string) ((true ? StrEos : StrCalcBytes));
                f_eosOrCalcBytes = true;
                return _eosOrCalcBytes;
            }
        }
        private bool f_calcBytes;
        private byte[] _calcBytes;
        public byte[] CalcBytes
        {
            get
            {
                if (f_calcBytes)
                    return _calcBytes;
                _calcBytes = (byte[]) (new byte[] { 98, 97, 122 });
                f_calcBytes = true;
                return _calcBytes;
            }
        }
        private string _strTerm;
        private string _strLimit;
        private string _strEos;
        private StrCombine m_root;
        private KaitaiStruct m_parent;
        public string StrTerm { get { return _strTerm; } }
        public string StrLimit { get { return _strLimit; } }
        public string StrEos { get { return _strEos; } }
        public StrCombine M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}

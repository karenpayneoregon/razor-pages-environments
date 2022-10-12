namespace WebApplication1.Classes
{
    public static class StringExtensions
    {
        public static string ToFormatted(this bool? sender, string ifTrue, string ifFalse, string ifNull)
        {
            if (!sender.HasValue) return ifNull;
            return sender.Value ? ifTrue : ifFalse;
        }
    }
}
